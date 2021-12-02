Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AF561466022
	for <lists+blinux-list@lfdr.de>; Thu,  2 Dec 2021 10:08:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638436077;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+ddnQGx2YTL9GVwsfj4YE/+XQKJ0Gtwl9DwIS92NMaM=;
	b=YjI5iiQoxdKS0n06ya0V3YixCSOuUu6K5rBjjaKj858PuiAikLYd+RsrW+J76wGDm/Fzp4
	lyh28+oEb2WZbvJSu48Tsk0SxsJanp7ZEbaOa/1lFgnnr04qUJd3it2jBKVTmfCMGTCpCj
	48MACDXWcFMt5b2pbQTo2iDyCbDEaOk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-120-e5vrhoSsPOGEgaATTt_0YA-1; Thu, 02 Dec 2021 04:07:53 -0500
X-MC-Unique: e5vrhoSsPOGEgaATTt_0YA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E3CAE1934100;
	Thu,  2 Dec 2021 09:07:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 14A2F10013D6;
	Thu,  2 Dec 2021 09:07:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F10294BB7B;
	Thu,  2 Dec 2021 09:07:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B297T5j030861 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 2 Dec 2021 04:07:29 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9D2D02166B3F; Thu,  2 Dec 2021 09:07:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 97B362166B26
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 09:07:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AB8E0805B0A
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 09:07:26 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
	[209.85.128.49]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-362-cIc46T7lOFyf0WFuzGjX8Q-1; Thu, 02 Dec 2021 04:07:25 -0500
X-MC-Unique: cIc46T7lOFyf0WFuzGjX8Q-1
Received: by mail-wm1-f49.google.com with SMTP id o29so22403464wms.2
	for <blinux-list@redhat.com>; Thu, 02 Dec 2021 01:07:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=vAduWz4IIdx6JfrnaZqIKwG+wsFhD8PIv4iooGIYxIc=;
	b=Lx2nRwnc8iXnQZEXn3C1hcadXQHX2mzgoZ2tZv4zF5ZuS/ZTA5fvQ2QhpIQKVfULTZ
	khp46YRyXIT5TOHgyb3oL3CXSr/H5LnpdTnlX+/D+f5DVsbxlcyMAA9ciUEJ+TCaAH83
	WHrPw0aHpe/vHrs7yogNZl3xkmaWRMqv1/ddXn1J8HP6JICS0xM1cVqPnl1ItPsHKLsZ
	5v4R8E+5ksS41dGhDeCdfOP9+sS7HqEAuJX+eBBi86lxkFNNHQhIFZJETtGAvoVSeHQc
	Oes4dauaUBtNv0JMWxg+UPr88XUVfxsXIZerwoSuIZnfmgDjbb0ldxsf+NxfTj+5jwxb
	48UQ==
X-Gm-Message-State: AOAM531tGQk4b4RBzjxaMp5R8/X5uhwqBwqICRwp3qzFZbTSYSX9CZTs
	C84xux9bC6HJPOe1WKbGx5G9few8ZaA=
X-Google-Smtp-Source: ABdhPJy8Gk14u8Hh6pmlfQDtKIUos1X25GphM6LIPnPIp8awAjwa9KhnaYrMys7+CUQuXnXt0m/ryQ==
X-Received: by 2002:a05:600c:a0b:: with SMTP id
	z11mr4846662wmp.147.1638436043583; 
	Thu, 02 Dec 2021 01:07:23 -0800 (PST)
Received: from [192.168.8.130] ([197.184.182.55])
	by smtp.gmail.com with ESMTPSA id v6sm1546988wmh.8.2021.12.02.01.07.22
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 02 Dec 2021 01:07:23 -0800 (PST)
Message-ID: <d7f6217e-8837-ac4b-d03b-ac3c446c2a90@gmail.com>
Date: Thu, 2 Dec 2021 11:07:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: My qemu error
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <14705b4c-bcf3-0b86-d90c-ad11da3ddc1a@gmail.com>
	<a4dfb37b-cf9e-ecad-bf05-cf6e0a0d3774@slint.fr>
	<478b6e46-5ca1-266a-695b-6f8119e207fa@slint.fr>
	<cc6c7abc-5b3e-5d19-2b20-e50f9409b703@gmail.com>
	<d4606e82-681f-875a-1f78-ff501d38bfcb@slint.fr>
	<fde2378c-88a7-b921-6835-7940f1a495d9@gmail.com>
	<2d99f717-6260-5970-f76a-2d81995a6908@slint.fr>
In-Reply-To: <2d99f717-6260-5970-f76a-2d81995a6908@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgRGlkaWVyLAoKCkkgY2hhbmdlZCBteSBzY3JpcHQsIGFuZCBmb3Igc29tZSByZWFzb24sIEkg
aGF2ZSBubyBzb3VuZC4gSGF2ZSB0byBkbyAKc29tZSBtb3JlIHJlYWRpbmcgb24gdGhpcy4KCgpX
YXJtIHJlZ2FyZHMsCgpCcmFuZHQgU3RlZW5rYW1wCgpTZW50IGZyb20gdGhlIEZlZG9yYSBtYWNo
aW5lLCB1c2luZyBUaHVuZGVyYmlyZAoKT24gMjAyMS8xMi8wMiAwMzoyMCwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBIaSBJYnJhaGltLAo+Cj4gdGhpcyBpcyB0
aGUgc2NyaXB0IEkgdXNlIHRvIHJ1biBXaW5kb3dzLTEwLzExIGluIGEgUWVtdSBWTToKPgo+IHFl
bXUtc3lzdGVtLXg4Nl82NCBcCj4gLWNwdSBob3N0IFwKPiAtZW5hYmxlLWt2bSBcCj4gLXNtcCAk
KG5wcm9jKSBcCj4gLW0gNEcgXAo+IC1rIGZyIFwKPiAtYm9vdCBvcmRlcj1jIFwKPiAtYm9vdCBt
ZW51PW9uIFwKPiAtZGV2aWNlIGludGVsLWhkYSBcCj4gLWRldmljZSBoZGEtZHVwbGV4IFwKPiAt
ZGlzcGxheSBndGsgXAo+IC12Z2Egc3RkIFwKPiAtZGV2aWNlIHVzYi1laGNpLGlkPWVoY2nCoCBc
Cj4gLWRyaXZlIGZpbGU9fi9xZW11L3dpbmRvd3MucWNvdzIsZm9ybWF0PXFjb3cyLG1lZGlhPWRp
c2sKPgo+IE5vIGlkZWEgaWYgaXQgd2lsbCBoYXZlIHNvdW5kIGluIEZlZG9yYSwgdGhvdWdoLgo+
Cj4gQ2hlZXJzLAo+IERpZGllcgo+Cj4gTGUgMDEvMTIvMjAyMSDDoCAxMDo1NCwgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+PiBIaSBEaWRpZXIsCj4+Cj4+
Cj4+IFRoZXJlIHdlcmUgc29tZSBwYWNrYWdlcyBtaXNzaW5nLCB3aGljaCBJIGhhdmUgbm93IGlu
c3RhbGxlZC4gSSAKPj4gaW5zdGFsbGVkIHFlbXUta3ZtLCB2aXJ0LW1hbmFnZXIgYW5kIHZpcnQt
dmlld2VyLCB3aGljaCBkaWRuJ3QgCj4+IGluc3RhbGwgYWxvbmcgd2l0aCB0aGUgbWFpbiBxZW11
IHBhY2thZ2UuCj4+Cj4+Cj4+IEkgYW0gc3RpbGwgaGF2aW5nIGlzc3VlcyB3aXRoIHRoZSBzb3Vu
ZCB0aGluZyBob3dldmVyLiBJIGFtIGhlc2l0YW50IAo+PiB0byB0cnkgYW5kIGZpeCB0aGUgc2Ny
aXB0IG15c2VsZi4KPj4KPj4KPj4gV2FybSByZWdhcmRzLAo+Pgo+PiBCcmFuZHQgU3RlZW5rYW1w
Cj4+Cj4+IFNlbnQgZnJvbSB0aGUgRmVkb3JhIG1hY2hpbmUsIHVzaW5nIFRodW5kZXJiaXJkCj4+
Cj4+IE9uIDIwMjEvMTEvMzAgMjM6MTIsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gd3JvdGU6Cj4+PiBIbyBCcmFuZHQsCj4+Pgo+Pj4gVGhpcyBkb2VzIHRlbGwgaWYgdGhlIHN1
cHBvcnQgZm9yIEtWTSBpcyBwcm9wZXJseSBjb25maWd1cmVkIGluIHRoaXMgCj4+PiBrZXJuZWwu
Cj4+Pgo+Pj4gdG8gY2hlY2ssIHlvdSBjYW4gZG8gdGhpczoKPj4+Cj4+PiBjcCAvcHJvYy9jb25m
aWcuZ3ogL3RtcAo+Pj4gY2QgL3RtcAo+Pj4gZ3VuemlwIGNvbmZpZy5nego+Pj4geW91IHdpbGwg
Z2V0IGEgZmlsZSBuYW1lZCBjb25maWcgd2l0aCBjb25maWd1cmF0aW9uIHNldHRpbmdzIG9mIHRo
ZSAKPj4+IGtlcm5lbAo+Pj4KPj4+IFlvdSBjYW4gZG8gdGhlIHNhbWUgd2l0aCBTbGludCBhbmQg
Y29tcGFyZS4KPj4+Cj4+PiBBbmQvb3IgdXNlIGEgRmVkb3JhIHN1cHBvcnQgY2hhbm5lbC4KPj4+
Cj4+PiBDaGVlcnMsCj4+Pgo+Pj4gRGlkaWVyCj4+Pgo+Pj4KPj4+IExlIDMwLzExLzIwMjEgw6Ag
MjE6NDMsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4+
PiBBcyBJIHN0YXRlZCwgSSdtIHJ1bm5pbmcgRmVkb3JhIE1hdGUgQ29tcGl6IDM1IGF0IHRoZSBt
b21lbnQsIGFuZAo+Pj4+Cj4+Pj4gJHVuYW1lIC1yCj4+Pj4KPj4+PiBnaXZlcyBtZSB0aGUgZm9s
bG93aW5nLgo+Pj4+Cj4+Pj4gNS4xNS41LTIwMC5mYzM1Lng4Nl82NAo+Pj4+Cj4+Pj4KPj4+PiBX
YXJtIHJlZ2FyZHMsCj4+Pj4KPj4+PiBCcmFuZHQgU3RlZW5rYW1wCj4+Pj4KPj4+PiBTZW50IGZy
b20gdGhlIEZlZG9yYSBtYWNoaW5lLCB1c2luZyBUaHVuZGVyYmlyZAo+Pj4+Cj4+Pj4gT24gMjAy
MS8xMS8zMCAyMDowMywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToK
Pj4+Pj4gUFMgaW5zdGVhZCBvZjoKPj4+Pj4gL2Jvb3QvY29uZmlnLWdlbmVyaWMtNS4xNC4xMwo+
Pj4+PiBwbGVhc2UgcmVhZDoKPj4+Pj4gL2Jvb3QvY29uZmlnLWdlbmVyaWMtNS4xMy4xMwo+Pj4+
Pgo+Pj4+PiBPVCBCb3RoIHRoZSA1LjEzIGFuZCA1LjE0IGhhdmUgYmVlbiBkZWNsYXJlZCBFbmQg
b2YgTGlmZSwgSSB3aWxsIAo+Pj4+PiBwcm92aWRlIGEKPj4+Pj4gNS4xNS56IHdoZW4gSSB3aWxs
IHRoaW5rIHRoaXMgYnJhbmNoIGlzIHN0YWJsZSBlbm91Z2guCj4+Pj4+Cj4+Pj4+IERpZGllcgo+
Pj4+Pgo+Pj4+PiBMZSAzMC8xMS8yMDIxIMOgIDE4OjQ5LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+Pj4+PiBIaSBCcmFuZHQsCj4+Pj4+PiBhbnN3ZXJz
IGlubGluZQo+Pj4+Pj4KPj4+Pj4+IExlIDMwLzExLzIwMjEgw6AgMTM6NTUsIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4+Pj4+PiBxZW11LXN5c3RlbS14
ODZfNjQ6IHdhcm5pbmc6ICctc291bmRodyBoZGEnIGlzIGRlcHJlY2F0ZWQsIAo+Pj4+Pj4+IHBs
ZWFzZSB1c2UgJy1kZXZpY2UgaW50ZWwtaGRhIC1kZXZpY2UgaGRhLWR1cGxleCcgaW5zdGVhZAo+
Pj4+Pj4+IGF1ZGlvOiBEZXZpY2UgaGRhOiBhdWRpb2RldiBkZWZhdWx0IHBhcmFtZXRlciBpcyBk
ZXByZWNhdGVkLCAKPj4+Pj4+PiBwbGVhc2Ugc3BlY2lmeSBhdWRpb2Rldj1wYQo+Pj4+Pj4+IGF1
ZGlvOiBEZXZpY2UgaGRhOiBhdWRpb2RldiBkZWZhdWx0IHBhcmFtZXRlciBpcyBkZXByZWNhdGVk
LCAKPj4+Pj4+PiBwbGVhc2Ugc3BlY2lmeSBhdWRpb2Rldj1wYQo+Pj4+Pj4+Cj4+Pj4+PiBJbiB0
aGUgY29tbWFuZCByZW1vdmUKPj4+Pj4+IC1zb3VuZGh3IGhkYQo+Pj4+Pj4gd2hpY2ggaXMgcmVk
dW5kYW50IHdpdGgKPj4+Pj4+IC1kZXZpY2UgaW50ZWwtaGRhIC1kZXZpY2UgaGRhLWR1cGxleAo+
Pj4+Pj4gYW5kIHByb2JhbHkgcmVwY2FjZQo+Pj4+Pj4gLS1hdWRpb2RldiBwYQo+Pj4+Pj4gYnk6
Cj4+Pj4+PiAtLWF1ZGlvZGV2PXBhaG93ZXZlciwgbWF5YmUgdGhpcyB3aG9sZSBzdHVmZiBpcyBu
b3QgCj4+Pj4+PiBuZWNlc3Nhcnk6LWF1ZGlvZGV2IHBhLGlkPXBhLG91dC5taXhpbmctZW5naW5l
PW9mZixvdXQubGF0ZW5jeT0yMDAwMAo+Pj4+Pj4gSSBkb24ndCBoYXZlIGl0Lgo+Pj4+Pj4KPj4+
Pj4+IMKgPsKgIGtub3cgaXQgZG9lcyB3b3JrIHVuZGVyIFNsaW50LCBidXQgbm90IHVuZGVyIEZl
ZG9yYSwgQXJjaCBvciAKPj4+Pj4+IFVidW50dS4KPj4+Pj4+Cj4+Pj4+PiBNYXliZSB0aGUga2Vy
bmVsIHlvdSBhcmUgcnVubmluZyBpbiBGZWRvcmEsIEFyY2ggb3IgVWJ1bnR1IGRvZXMgCj4+Pj4+
PiBub3QgaGF2ZSBhCj4+Pj4+PiBwcm9wZXIgY29uZmlndXJhdGlvbiBmb3IgS1ZNLCByZWFkOgo+
Pj4+Pj4gaHR0cHM6Ly93d3cubGludXgta3ZtLm9yZy9wYWdlL1R1bmluZ19LZXJuZWwKPj4+Pj4+
Cj4+Pj4+PiBJbiBTbGludCB0aGUga2VybmVsIGNvbmZpZ3VyYXRpb24gaXMgZm91bmQgaW4gb25l
IG9mIHRoZXNlIGZpbGVzOgo+Pj4+Pj4gL2Jvb3QvY29uZmlnLWdlbmVyaWMtNS4xNC4xNC54NjQK
Pj4+Pj4+IC9ib290L2NvbmZpZy1nZW5lcmljLTUuMTQuMTMKPj4+Pj4+IFRoZXNlIGNvbW1hbmRz
Ogo+Pj4+Pj4gY2F0IC9wcm9jL2NtZGxpbmUKPj4+Pj4+IHVuYW1lIC1yCj4+Pj4+PiB0ZWxsIHlv
dSB3aGljaCBrZXJuZWwgaXMgcnVubmluZywgc28geW91IGtub3cgaG93IGl0IGlzIGNvbmZpZ3Vy
ZWQuCj4+Pj4+Pgo+Pj4+Pj4gQWxzbywgdGhlcmUgY291bGQgYmUgYW4gaXNzdWUgd2l0aCB5b3Vy
IHFlbXUgdmVyc2lvbi4KPj4+Pj4+Cj4+Pj4+PiBJbiBTbGludCBhdCB0aW1lIG9mIHdyaXRpbmc6
Cj4+Pj4+PiBkYW5jZVt+XSQgcWVtdS1zeXN0ZW0teDg2XzY0IC0tdmVyc2lvbgo+Pj4+Pj4gUUVN
VSBlbXVsYXRvciB2ZXJzaW9uIDYuMC4wCj4+Pj4+PiBDb3B5cmlnaHQgKGMpIDIwMDMtMjAyMSBG
YWJyaWNlIEJlbGxhcmQgYW5kIHRoZSBRRU1VIFByb2plY3QgCj4+Pj4+PiBkZXZlbG9wZXJzCj4+
Pj4+Pgo+Pj4+Pj4gQ2hlZXJzLAo+Pj4+Pj4gRGlkaWVyCj4KPgo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEBy
ZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3Q=

