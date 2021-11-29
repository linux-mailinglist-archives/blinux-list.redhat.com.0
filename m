Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A88460CA2
	for <lists+blinux-list@lfdr.de>; Mon, 29 Nov 2021 03:25:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638152733;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5j7t+eAd+mRwBYsgS1rqYjaBSwkIE1cTZUtJNfDxFgU=;
	b=VKxJlzsU8trUGxXp4qsTZ8Ikp7abYMHcYjYIAesM99VgvpRHo3k9fK9InxUDjYWcfubzMw
	z44JBVZIv7HqqgnlVqOE1e9z2TUQecewCnfxxAH38EzlbtXDXg0zjlyXuquNJk2QgA4DRa
	Ax5UIOPzAD7wbm6YeEnvL3OPTof4xtA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-532-U86W8Q9xPaSWn55xic5MEA-1; Sun, 28 Nov 2021 21:25:30 -0500
X-MC-Unique: U86W8Q9xPaSWn55xic5MEA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 55DAD835B4B;
	Mon, 29 Nov 2021 02:25:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C454D5450E;
	Mon, 29 Nov 2021 02:25:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 587944BB7B;
	Mon, 29 Nov 2021 02:25:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AT2P5Y0009798 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 28 Nov 2021 21:25:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 580E51402407; Mon, 29 Nov 2021 02:25:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5364A1402406
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 02:25:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 388EC803D78
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 02:25:05 +0000 (UTC)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
	[209.85.160.173]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-333-xntNkbrkNJOTMCKqYsz41A-1; Sun, 28 Nov 2021 21:24:33 -0500
X-MC-Unique: xntNkbrkNJOTMCKqYsz41A-1
Received: by mail-qt1-f173.google.com with SMTP id j17so15040262qtx.2
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 18:24:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=znwzXTjnzfLp8OkmvN0gvoVjK65IgF5arUDMIVgOE4M=;
	b=O2bFkv9dTicy2WYt0n6et0j+usp94SiAZyQqn0E4a8AH7awwPN50tkGO7Zmr/Z9ku6
	jfTUt10HlMximGpLo6R5HLZbqlCaZ4QQ/Y8LIR0TtFNKpKP8Mpr1I/uxFI72qiHbbj79
	khfSVQcrFH8/nUKFBJQPoNyF6VTzbjOZtstYd5lBq8jPUu7Vl1dwfaqjUBG62QYYcxAs
	l+izJU7lieNiegXR9KwYkyyUHD1jrNQsKwJzhSTED+TpMhyNr0T7G0SRhqs1ocu0dze9
	PNR0vQjUTBw/VLV/Z1b9jdJepOHWvflAaS96ptw6POBpcAB6f215nnUyvaudysvNRwl3
	Edow==
X-Gm-Message-State: AOAM533zsQPOBF8LNtVSXDL8b3KCw8vPQt6ABPuJwGzN9IIsIQu1kOGo
	9yeSe2P3oyrerruDN3280RRcftBKt195haeN
X-Google-Smtp-Source: ABdhPJz37nSRGCQxUujB6jpvmIL7+ypR7MFA8gZ7bCqGHXtkBRZSK0jvM6GsCFc7T11P+OUs6He9dw==
X-Received: by 2002:a05:622a:30b:: with SMTP id
	q11mr41012041qtw.348.1638152672164; 
	Sun, 28 Nov 2021 18:24:32 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330::16])
	by smtp.gmail.com with ESMTPSA id i7sm7846769qkn.0.2021.11.28.18.24.31
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 28 Nov 2021 18:24:31 -0800 (PST)
Subject: Re: WEBM, is it the default option of yt-dlp downloads?
To: blinux-list@redhat.com
References: <8e070d49-f0ee-f2b8-9086-c38fbd232003@gmail.com>
	<fda47b2b-0bad-b566-b60d-942b64720311@slint.fr>
	<ed84ed62-9e28-7054-9f49-aa505ada1a1f@hubert-humphrey.com>
	<91c67ade-b15f-7130-5641-980ffc0e1a6f@slint.fr>
	<c692751c-9531-b44d-4f30-324fed10f80b@slint.fr>
	<Pine.LNX.4.64.2111281548330.113324@server2.shellworld.net>
	<0e2c01d4-2455-8496-20ac-b94d6d1a97dc@gmail.com>
	<8f75b23b-de19-adac-e05b-c200bd499000@gmail.com>
Message-ID: <8f0c9597-83fb-eae3-436e-870094c13df0@gmail.com>
Date: Sun, 28 Nov 2021 21:24:30 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <8f75b23b-de19-adac-e05b-c200bd499000@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

dGhhbmtzIEt5bGUuCgpJIGxpa2UgeW91ciBwaGlsb3NvcGh5LiBJIGFtIG9uZSBvZiB0aG9zZSB3
aG8gaGFzIG5vIGludGVyZXN0IGluIGdhaW5pbmcgCnRoZSB1c2VyLXBvd2VyLWV4cGVyaWVuY2Uu
IEkganVzdCB3YW50IHRvIGJlIGFuIGF2ZXJhZ2UgTGludXggdXNlci4KCkkgYW0gYSBjb2xsZWdl
IHByb2Zlc3NvciBhbmQgaGF2ZSBubyB0aW1lIHRvIHNwZW5kIGxvbmcgaG91cnMgcmVhZGluZyAK
bWFudWFscyB0ZWFjaGluZyBtZSB0aGUgbml0dHkgZ3JpdHR5IG9mIGhvdyB0byB3cml0ZSBhIHN1
cGhpc3RpY2F0ZWQgCnNjcmlwdC4gV2hlbiBJIHJlYWQgdGhlc2UgbWFudWFscyBJIGNhbid0IHVu
ZGVyc3RhbmQgbW9zdCBvZiB3aGF0IEkgcmVhZCAKYW55d2F5LiBUaGF0IGlzIGJlY2F1c2UgSSBo
YXZlIG5vIHByZXZpb3VzIGV4cGVyaWVuY2Ugd2l0aCBwcm9ncmFtbWluZyAKb3Igd2l0aCBMaW51
eCBpbiBwYXJ0aWN1bGFyLgoKV2hhdCBJIGNhcmUgYWJvdXQgaXMganVzdCBhIHNtb290aCBleHBl
cmllbmNlIG9mIGhhdmluZyBteSB3b3JrIGRvbmUgaW4gCmEgcmVsYXRpdmVseSBzYWZlIGRpZ2l0
YWwgZW52aXJvbm1lbnQuIFNvIGZhciBJIGNhbiB1c2UgTGludXggZm9yIGVtYWlsLCAKZm9yIGlu
dGVybmV0IGJyb3dzaW5nLCBmb3Igc2hhcmluZyBmaWxlcyB2aWEgZHJvcGJveCBhbmQgcXVpY2ts
eSAKcmVwbHlpbmcgdG8gbXkgd2hhdHNhcHAgdmlhIHdoYXRzYXBwIHdlYi4KCkkgYmVsaWV2ZSB0
aGF0IHdpdGggdGltZSBJIHdpbGwgYmUgYWJsZSB0byBkZXZlbG9wIG1vcmUgc2tpbGxzLCBsZWFy
bmluZyAKZnJvbSB0aG9zZSB3aG8gaGF2ZSBtb3JlIGV4cGVyaWVuY2UgaW4gdXNpbmcgdGhlIExp
bnV4IHBsYXRmb3JtLgoKQ2hlZXJzLAoKSWJyYWhpbQoKCk9uIDExLzI4LzIxIDY6MjYgUE0sIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSSByZWFkIHRoZSBxdWVz
dGlvbnMgYW5kIHRoZcKgIHJlcGxpZXMgb24gdGhpcyBsaXN0IGFuZCBmaW5kIG15c2VsZiAKPiBs
b3N0LCBhbmQgd29uZGVyIGlmIEkgbmVlZCBhIG1hc3RlcnMgaW4gY29tcHV0ZXIgc2NpZW5jZXMg
dG8ga2VlcCB1cCEhIAo+IGhhaGFoYWhhCj4KPiBBbmQgdGhpcyBpcyBleGFjdGx5IHRoZSBwcm9i
bGVtIEkgaGF2ZSwgYW5kIHdoeSBJIGdlbmVyYWxseSBsaWtlIHRvIAo+IGhlbHAgcGVvcGxlIG9u
ZS1vbi1vbmUgd2l0aCB3aGF0IHdvcmtzIHJpZ2h0IG91dCBvZiB0aGUgYm94IHJhdGhlciAKPiB0
aGFuIGdldHRpbmcgY2F1Z2h0IHVwIGluIHRoZSBtb3JlIGVzb3RlcmljIHBvd2VyIHVzZXIgc3R1
ZmYuIExpbnV4IGlzIAo+IG5vIGhhcmRlciB0byB1c2Ugbm9yIG1vcmUgb2NjdWx0IHRoYW4gYW55
IG90aGVyIE9TLCBpdCBqdXN0IGhhcyB0aGlzIAo+IHJlcHV0YXRpb24gYmVjYXVzZSBvZiBsaWVz
IHNwcmVhZCBieSBjb3Jwb3JhdGUgZW50aXRpZXMgdGhhdCBtYWtlIAo+IG90aGVyIG9wZXJhdGlu
ZyBzeXN0ZW1zLCBhcyB3ZWxsIGFzIHdlbGwtbWVhbmluZyBwZW9wbGUgd2hvIHdhbnQgCj4gZXZl
cnlvbmUgdG8gaGF2ZSB0aGUgcG93ZXIgdXNlciBleHBlcmllbmNlLiBUaGVyZSdzIG5vdGhpbmcg
YXQgYWxsIAo+IHdyb25nIHdpdGggYWxsb3dpbmcgb3RoZXJzIHRvIGhhdmUgdGhlIHBvd2VyIHVz
ZXIgZXhwZXJpZW5jZSwgd2hpY2ggaXMgCj4gd2h5IG5vIExpbnV4IGRpc3RyaWJ1dGlvbiB3aWxs
IGV2ZXIgdGFrZSB0aGF0IGV4cGVyaWVuY2UgYW5kIHRob3NlIAo+IGFiaWxpdGllcyBhd2F5IGZy
b20gYW55b25lLiBUaGUgcHJvYmxlbSBpcyB0aGF0IHRoaXMgcG93ZXIgdXNlciAKPiBleHBlcmll
bmNlIGlzIG5vdCBhdCBhbGwgZm9yIGV2ZXJ5b25lLCBhbmQgbWFueSBwZW9wbGUganVzdCB3YW50
IHRvIAo+IHNpdCBkb3duIGF0IHRoZWlyIGNvbXB1dGVycyBhbmQganVzdCBnZXQgdGhpbmdzIGRv
bmUgaW4gdGhlIG1vc3QgCj4gZWZmaWNpZW50IGFuZCBwcm9kdWN0aXZlIHdheSBwb3NzaWJsZSwg
YW5kIEdOVS9MaW51eCBpcyBieSBmYXIgdGhlIAo+IGJlc3QgT1MgZm9yIHRoaXMgYXMgd2VsbCwg
ZGVzcGl0ZSBldmVyeXRoaW5nIHBlb3BsZSBvbiB0aGlzIGFuZCBvdGhlciAKPiBsaXN0cyB3cml0
ZSB0byB0aGUgY29udHJhcnkuIFRoZSBvbmx5IHJlYWwgZGlmZmVyZW5jZSBiZXR3ZWVuIGFueSAK
PiBMaW51eCBkaXN0cmlidXRpb24gYW5kIGFueSBvdGhlciBPUyBpcyB0aGF0IHdpdGggYSBMaW51
eCBkaXN0cmlidXRpb24sIAo+IHlvdSBoYXZlIG1vcmUgY2hvaWNlcyBhdmFpbGFibGUgZm9yIGFu
eSBza2lsbCBsZXZlbCB1bmRlciB0aGUgc3VuIHRoYW4gCj4geW91IGdldCB3aXRoIGFueSBvdGhl
ciBPUywgYWxsIGF2YWlsYWJsZSBmcm9tIGV2ZW4gYSBjaG9pY2Ugb2YgCj4gc29mdHdhcmUgcmVw
b3NpdG9yaWVzLiBXaGVyZWFzIHRoaXMgY2FuIGJlIHNlZW4gYXMgYSBiYWQgdGhpbmcsIGl0IGlz
IAo+IGFjdHVhbGx5IGEgdmVyeSBnb29kIHRoaW5nLiBObywgeW91IGRvbid0IGhhdmUgdG8gaGF2
ZSBhIG1hc3RlcidzIAo+IGRlZ3JlZSBpbiBjb21wdXRlciBzY2llbmNlIHRvIHVzZSBMaW51eCwg
bm9yIGRvIHlvdSBldmVuIGhhdmUgdG8ga25vdyAKPiBob3cgdG8gYmUgYSBmYWlybHkgY29tcGV0
ZW50IHByb2dyYW1tZXIuIFlvdSBvbmx5IG5lZWQgdG8ga25vdyBob3cgCj4gc29mdHdhcmUgcmVw
b3NpdG9yaWVzIHdvcmsgYW5kIGhvdyB0byBmaW5kIHdoYXQgeW91IG5lZWQsIHdoaWNoIGlzIAo+
IHNvbWV0aGluZyB0aGF0IEdOVS9MaW51eCBtYWtlcyBtdWNoIGVhc2llciB0aGFuIGFsbCBvdGhl
ciBvcGVyYXRpbmcgCj4gc3lzdGVtcywgYWx0aG91Z2ggc29tZSBkbyBtYWtlIHRoaXMgZWFzaWVy
IHRoYW4gb3RoZXJzLiBTdGlsbCwgaXQncyAKPiBhbGwgYWJvdXQgY2hvaWNlIGFuZCBhbGwgYWJv
dXQgZnJlZWRvbSwgYnV0IG1hbnkgb2YgdGhlIGF2YWlsYWJsZSAKPiBjaG9pY2VzIGFjdHVhbGx5
IG1ha2UgaXQgZWFzaWVyIHRvIGp1c3QgZ2V0IHRoaW5ncyBkb25lLCBhbmQgd2UgZG9uJ3QgCj4g
aGF2ZSB0byBiZSBhYnNvbHV0ZSBiZWdpbm5lcnMgaW4gb3JkZXIgdG8gZ2V0IGFueSB1c2Ugb3V0
IG9mIG91ciBPUyAKPiBlaXRoZXIsIHNpbmNlIGl0IGNhbiBncm93IGZyb20gdGhlIGFic29sdXRl
IGJlZ2lubmVyIGFsbCB0aGUgd2F5IHVwIHRvIAo+IHRoZSBtb3N0IHNvcGhpc3RpY2F0ZWQgcG93
ZXIgdXNlciBleHBlcmllbmNlIGJldHRlciB0aGFuIGFueSBvdGhlciBPUyAKPiBjdXJyZW50bHkg
b24gdGhlIG1hcmtldC4KPiB+S3lsZQo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

