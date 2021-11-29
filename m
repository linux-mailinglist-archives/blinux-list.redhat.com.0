Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C11F94614E4
	for <lists+blinux-list@lfdr.de>; Mon, 29 Nov 2021 13:20:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638188413;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rXiXbNl+OURWhUQdqnM+yyWlWFrpQUdLXwRe5SL0U3E=;
	b=Onv4tyeNQkwvCV/UrJ3aCUfPvfTFLGFd4blW/M+/RpuIaVgQAa1oe4/UxvDSyFW5k9vdkW
	4Af/G3mRipMXlBArpL481+n/RYd5bNCTdz+vixDY8yZkFzLukwD2UXvqhmXf3BY6kQ/SiV
	SCzXuamKLzD1f4VMarPTRnBKBLaSq90=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-182-p2LnPgg_NcGBuKatK1BcNw-1; Mon, 29 Nov 2021 07:20:10 -0500
X-MC-Unique: p2LnPgg_NcGBuKatK1BcNw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B28E2884E7C;
	Mon, 29 Nov 2021 12:20:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2DBFC78DEE;
	Mon, 29 Nov 2021 12:20:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CD6074BB7C;
	Mon, 29 Nov 2021 12:19:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ATCJqDM021884 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 07:19:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A091D40CFD13; Mon, 29 Nov 2021 12:19:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9B9F440CFD05
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 12:19:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 81568811E7F
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 12:19:52 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-197-SZEsDuLQM7GKBQM-zIxvEQ-1;
	Mon, 29 Nov 2021 07:19:41 -0500
X-MC-Unique: SZEsDuLQM7GKBQM-zIxvEQ-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 70FEEA3FDA
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 11:18:59 +0100 (CET)
Message-ID: <e3a5142f-18c8-8ea5-b7a8-35de34aea975@slint.fr>
Date: Mon, 29 Nov 2021 13:19:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: Pipewire and Orca and audio
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <3f05a646-0fcf-7f37-6319-11341ad34e0d@gmail.com>
	<0695243c-f388-0811-b0bc-9489b961ce27@slint.fr>
In-Reply-To: <0695243c-f388-0811-b0bc-9489b961ce27@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1ATCJqDM021884
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSBtZWFudDoKL2V0Yy9zcGVlY2gtZGlzcGF0Y2hlci9zcGVlY2hkLmNvbmYKCkRpZGllcgpMZSAy
OS8xMS8yMDIxIMOgIDEzOjEzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEg
w6ljcml0wqA6Cj4gT3JjYSBzcGVha3MgdGhyb3VnaCBzcGVlY2gtZGlzcGF0Y2hlciB3aGljaCBt
YW5hZ2UgdGhlIGF1ZGlvIG91dHB1dC4KPiAKPiBidXQgcGxlYXNlIG5vdGUgdGhhdCBhcyBvZiB0
b2RheSwgdGhlcmUgaXMgbm8gYXVkaW8gZHJpdmVyIGZvciBwaXBld2lyZSBpbgo+IHNwZWVjaC1k
aXNwYXRjaGVyLCBoZWxwIHdlbGNvbWUgdG8gcHJvdmlkZSBvbmU6Cj4gCj4gaHR0cHM6Ly9naXRo
dWIuY29tL2JyYWlsY29tL3NwZWVjaGQvaXNzdWVzLzQ0Nwo+IAo+IG1lYW53aGlsZSBJIHN1Z2dl
c3QgdGhhdCB5b3UganVzdCBlZGl0IC9ldGMvc3BlZWNoLWRpc3BhdGNoZXItc3BlZWNoZC5jb25m
LAo+IHNldHRpbmcgZWl0aGVyOgo+IEF1ZGlvT3V0cHV0TWV0aG9kICJsaWJhbyIKPiBvcgo+IEF1
ZGlvT3V0cHV0TWV0aG9kICJwdWxzZSIKPiBvcgo+IEF1ZGlvT3V0cHV0TWV0aG9kICJhbHNhIgo+
IAo+IEluZGVlZCB0aGUgY29ycmVzcG9uZGluZyBzb2Z0d2FyZSBzaG91bGQgYmUgaW5zdGFsbGVk
Lgo+IAo+IENoZWVycywKPiBEaWRpZXIKPiAKPiBMZSAyOS8xMS8yMDIxIMOgIDEyOjQ0LCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+IFNvIEknbSBjb252
aW5jZWQgbm93IFBpcGV3aXJlIGlzIGRvaW5nIHNvbWV0aGluZyBmdW5reSBvbiAKPj4gcWVtdS9W
aXJ0dWFsYm94LiBJJ3ZlIHNwdW4gdXAgYSBxdWljayBhbmQgZGlydHkgQXJjaCBzeXN0ZW0gcnVu
bmluZyAKPj4gTWF0ZSB2aWEgc3RhcnR4LiBQdWxzZSB3b3JrcyBmaW5lIGJ1dCB0aGUgbW9tZW50
IEkgcmVkbyB0aGUgaW5zdGFsbCAKPj4gd2l0aCBQaXBld2lyZSwgT3JjYSBrZWVscyBvdmVyLgo+
Pgo+PiBTbyBpcyB0aGVyZSBhbnl0aGluZyBzcGVjaWFsIEkgbmVlZCB0byBkbyBpbiBvcmRlciB0
byBnZXQgUGlwZXdpcmUgdG8gCj4+IHBsYXkgbmljZT8gSSBkaWQgc3VkbyBwYWNtYW4gLVMgcGlw
ZXdpcmUgcGlwZXdpcmUtcHVsc2Ugd2lyZXBsdW1iZXIgCj4+IGFuZCBhbSB0cnlpbmcgdG8gZ28g
d2l0aCBhIFBpcGV3aXJlIGFuZCBXaXJlcGx1bWJlciBzZXR1cC4gQWxsIG90aGVyIAo+PiBhdWRp
bywgbGlrZSBZVCB2aWRzLCB3b3JrcyBmaW5lLCBPcmNhIGp1c3QgY29tZXMgb3V0IGFzIGEgZ2Fy
YmxlZCAKPj4gbWVzcywgc28gaXQgbG9va3MgYXQgbGVhc3QgdG8gbWUgbGlrZSBQdWxzZSB3b3Jr
cyBiZXR0ZXIgb24gbXkgc3lzdGVtLgo+Pgo+PiBBbnlvbmUgZWxzZSBydW4gaW50byB0aGlzIHdp
dGggQXJjaCBvciBvdGhlciBkaXN0cm9zIHVzaW5nIFBpcGV3aXJlIAo+PiBhbmQgZml1cmUgb3V0
IGEgc29sdXRpb24/IFRoZXJlJ3Mgbm90IG11Y2ggb25saW5lIHJlYWxseSBhYm91dCBpdCwgCj4+
IGp1c3QgYXJ0aWNsZXMgb24gb2ggaXQncyBhIGJ1Zywgb3Igb2ggcmVwbGFjZSBQdWxzZSB3aXRo
IFBpcGV3aXJlCj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKPj4KPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

