Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8F344FC8A
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 01:16:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636935404;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uwOAjNF4zkuDEpCHziLWXQVdCApafsegn11+d/xlEg4=;
	b=YZq3bE5enC7i7BWcdZQACNUlkbE/WN4oe6HivVhXs4oX49x7WGCP2esvXkcuz3nRJL90jS
	HdmIRNME0Qn1eYT/Tiq/3DUhbEhVp9J2Vca17birrJOxr9f0d7nF8yI4DAL7/cayuRpDBf
	wgWZZp7KNdyJQ2iw+KYf19J5TzDxSCw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-166-IfPLrLKyPFGRbx0f3lwUPA-1; Sun, 14 Nov 2021 19:16:43 -0500
X-MC-Unique: IfPLrLKyPFGRbx0f3lwUPA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EA649871803;
	Mon, 15 Nov 2021 00:16:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EFF9719EF9;
	Mon, 15 Nov 2021 00:16:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 568944E58F;
	Mon, 15 Nov 2021 00:16:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AF0EYGk009018 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Nov 2021 19:14:34 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7FF2740CFD10; Mon, 15 Nov 2021 00:14:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7A1F040CFD08
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 00:14:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 60A7C805C2F
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 00:14:34 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-20-gUU7UejIOZqtPicLLam-aA-1; Sun, 14 Nov 2021 19:14:32 -0500
X-MC-Unique: gUU7UejIOZqtPicLLam-aA-1
Received: by mail-qt1-f172.google.com with SMTP id v22so9405058qtx.8
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 16:14:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=AglQCjEOPGteEhTXd2BRUVuW2j3kKEAnYHY4roWh3jc=;
	b=EGkSbijZrhDFcHLZyWee1jy57k+vgq3gLfRmjY3ke+C+2Q9smX8Wg4d3/7tfD64wJw
	TzLN1C8JV8DxJA/8pRhZOluWqfHBY4Hmvwt079TaKXizRjWANohKhTatjQSw5RBL5Cmx
	BMVkgGOyXL2auiJVr1L/NXvpkmxadDDDN5LMJa2nAZXLdAMumFZXb9rH0NtBbwcA/u5f
	vCd14a1zn7QAxK34gWT5ZBrUye1EOzMAx54kPOIC9soclNNWYDtXc1+FnKZWHMT5T45r
	i7MZ9bTNS/84tK1KBLLYozDh8t+5LuDPEjB+F/6KztDzY8ZMlWtjnyiGBSSUlFMUuRCt
	8Z2A==
X-Gm-Message-State: AOAM531tSp9DsodolNUiqepw+6Y2ef+SPiPJpjvn8HPYt1E1lZysVbsK
	CeXrh6R8bZFuoWfl00R7r1IrbpDLtaVwvc6v
X-Google-Smtp-Source: ABdhPJz9WP/eGPezIKePMuRJvHP2FsBwQ7QpnqTeQVlB19rq6eZN9SS/mYIp7B7nxKMTsOjWHL8Fqg==
X-Received: by 2002:a05:622a:11d1:: with SMTP id
	n17mr3624565qtk.154.1636935271740; 
	Sun, 14 Nov 2021 16:14:31 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330::11])
	by smtp.gmail.com with ESMTPSA id
	s12sm3996334qtk.61.2021.11.14.16.14.30 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 14 Nov 2021 16:14:31 -0800 (PST)
Subject: Re: any other accessible email client for linux?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4015f410-14f1-6c3b-b0a5-7688b34c418e@gmail.com>
	<b415a935-f50d-a71b-0ddd-30d1f8ac6146@gmail.com>
	<df15eb1f-989b-b8fb-f90c-8fa6817be487@gmail.com>
	<alpine.NEB.2.23.451.2111141627140.871@panix1.panix.com>
	<6bb0a456-bfc5-e1dc-5886-5dc32687c580@gmail.com>
	<b356b32b-3de9-88fb-c8d2-26876231dcc1@gmail.com>
	<c1a9cbd4-a9a1-910f-0244-049cea5edc74@gmail.com>
	<f4000503-df02-93a7-d50e-825ac3e2a0f8@gmail.com>
Message-ID: <24c55f9c-07ac-ac25-5a96-e3fd5127b7c7@gmail.com>
Date: Sun, 14 Nov 2021 19:14:30 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <f4000503-df02-93a7-d50e-825ac3e2a0f8@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

aG93IGRpZCB5b3UgZG8gdGhhdD8gSSBjb3VsZCBub3QgZmluZCB0aGUgc2V0dGluZ3MgcGVydGFp
bmluZyB0byB0aGVtLgoKQ2hlZXJzLAoKSWJyYWhpbQoKT24gMTEvMTQvMjEgNjo0NCBQTSwgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBJIGNsb3NlZMKgIHRob3Nl
IHRhYnMsIGluIHQtYmlyZCwgYSBsb25nIHRpbWUgYWdvLsKgIEFsbCBJIHNlZSBpcyBteSAKPiBt
YWlsIGZvbGRlcnMuCj4KPiBPbiAxMS8xNC8yMSAxODo0MCwgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4KPj4gSSB3aWxsIHBsYXkgd2l0aCBpdCBhbmQgc2VlIGlm
IEkgY291bGQgZmlndXJlIGl0IG91dC4gSWYgSSBjb3VsZCBoaWRlIAo+PiB0aGUgY2hhdCBhbmQg
dGhlIGNhbGVuZGFyIGZyb20gdGh1bmRlcmJpcmQgSSB3b3VsZCBub3QgdHJ5IGFueSBvdGhlciAK
Pj4gZW1haWwgYXBwbGljYXRpb25zLgo+Pgo+Pgo+PiBDaGVlcnMsCj4+Cj4+IElicmFoaW0KPj4K
Pj4gT24gMTEvMTQvMjEgNjoyOCBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biB3cm90ZToKPj4+IFdoZW4gaW4gdGhlIGNvbmZpZ3VyYXRpb24gc2NyZWVuLCB1c2UgdGhlICd3
JyBjb21tYW5kIHRvIHNlYXJjaCBmb3IgCj4+PiB0aGUgc3RyaW5nICJzaG93LWN1cnNvciIsIG9y
IHRoZSBsaWtlLCBhbmQgaGl0ICdzcGFjZScgb24gdGhhdC7CoCAKPj4+IE9uY2UgdGhlIGN1cnNv
ciBpcyBzaG93aW5nLCB5b3Ugc2hvdWxkIGJlIGFibGUgdG8gaGVhciB3aGVyZSB5b3UgCj4+PiBh
cmUuIEl0IGlzIGxpa2UgY2hlY2tib3hlcy7CoCBUaGVyZSB3aWxsIGJlIGFuICd4JyBpbiB0aGUg
b25lcyB0aGF0IAo+Pj4gYXJlIHNlbGVjdGVkLgo+Pj4KPj4+Cj4+PiBZb3Ugd29uJ3QgZmluZCBh
IGZpZWxkIGNhbGxlZCBpbWFwIHNlcnZlciwgYnV0IHlvdSB3aWxsIGZpbmQgdmFyaW91cyAKPj4+
IHBhdGhzLCBpbmNsdWRpbmcgb25lIGZvciBpbmJveC7CoCBZb3UgaGF2ZSB0byBpbmNsdWRlIHBv
cnQgbnVtYmVycyAKPj4+IGFuZCByZW1vdGUgcGF0aG5hbWVzLsKgIEFuIGV4YW1wbGUgbGluZSBt
aWdodCBiZToKPj4+Cj4+Pgo+Pj4gImluYm94cGF0aD17ZGFodW50QGltYXAuZ29vZ2xlLmNvbTo0
NDN9aW5ib3giCj4+Pgo+Pj4KPj4+IFdpdGggeW91ciBmYXZvcml0ZSBzZWFyY2ggZW5naW5lLCBs
b29rIGZvciBzb21ldGhpbmcgbGlrZSAicGluZSAKPj4+IGdtYWlsIi4gVGhlcmUgYXJlIHNldmVy
YWwgZXhhbXBsZSBmaWxlcyBvbiB0aGUgbmV0LiBUaGVzZSBmaWxlcyBhcmUgCj4+PiBodW1hbi1y
ZWFkYWJsZSBhbmQgZWRpdGFibGUuwqAgUmVtZW1iZXIsIHRoZSBmaWxlIGluIHF1ZXN0aW9uIGlz
IAo+Pj4gY2FsbGVkICJ+Ly5waW5lcmMiLsKgIElmIHlvdSB3YW50IHRvIGVkaXQgdGhpcyBmaWxl
IHdpdGggYSBndWkgCj4+PiBwcm9ncmFtIGxpa2UgcGx1bWEsIHRoYXQgd2lsbCB3b3JrLsKgIElu
IG9yZGVyIHRvIGhhdmUgeW91ciBmaWxlIAo+Pj4gbWFuYWdlciBzaG93IHlvdSB0aGUgZmlsZXMg
d2l0aCBuYW1lcyBiZWdpbm5pbmcgd2l0aCAnLicsIHVzZSAKPj4+ICdjdHJsK2gnLCBpbiBhIGZp
bGUgbWFuYWdlciB3aW5kb3cuCj4+Pgo+Pj4KPj4+Cj4+PiBIVEgsCj4+Pgo+Pj4KPj4+Cj4+PiBE
YXZlwqAgSHVudMKgIDxrYTFjZXlAZ21haWwuY29tPgo+Pj4KPj4+Cj4+Pgo+Pj4gT24gMTEvMTQv
MjEgMTg6MTQsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4g
dGhlIHNtdHAgc2VydmVyIGV0Yy4gVGhlIHByb2JsZW0gaXMgdGhhdCBtb3ZpbmcgaW50byB0aGVz
ZSBmaWVsZHMgCj4+Pj4gd2l0aCB0aGUgYXJyb3dzIGRvZXMgbm90IHdvcmsuIEkgZ2V0IG5vIAo+
Pj4KPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+
PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+
IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK
Pj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Cj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

