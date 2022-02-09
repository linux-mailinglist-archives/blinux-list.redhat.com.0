Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D4AD74AFE1D
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 21:18:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644437927;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YCSxQZCS42GKBMuPXdnJiam3oaygqxIPOFmR5sIgm84=;
	b=Lfy39fRXdCIhCRz+jucjdff3dR/SwNcHZXlHoN9j7fFvOLdATN9+LbhNWtd5bmuS6f3dDs
	IL/9XZqsdJebmsOvXXWn/NguTKrb83yMnHF0uv0LezmMHDMVGL3oa/vFnuMgEpy4iQNprr
	n1mI+WAQ8Z9SL3JM0GiAn4ZJpUBZcsU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-345-XurWrMp8Oa2MxgEmkTqc1Q-1; Wed, 09 Feb 2022 15:18:43 -0500
X-MC-Unique: XurWrMp8Oa2MxgEmkTqc1Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3F933100CCC0;
	Wed,  9 Feb 2022 20:18:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1ED275D6D5;
	Wed,  9 Feb 2022 20:18:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CB0811809CB8;
	Wed,  9 Feb 2022 20:18:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219KIX1W005586 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 15:18:33 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6998B142B967; Wed,  9 Feb 2022 20:18:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 660A8142B966
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 20:18:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4DFAC802809
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 20:18:33 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-592-IXPUr0nQM-GBpn6kqt33ug-1;
	Wed, 09 Feb 2022 15:18:31 -0500
X-MC-Unique: IXPUr0nQM-GBpn6kqt33ug-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id DF12C20D00
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 20:18:19 +0100 (CET)
Message-ID: <8386b4e1-85e7-d08b-fc9b-608708449a86@slint.fr>
Date: Wed, 9 Feb 2022 21:18:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.6.0
Subject: Re: Has anyone gotten i3 accessible yet? or is there a better option
	besides ratpoison, which is great, btw
To: blinux-list@redhat.com
References: <291bcc92-8153-06b1-5831-937bb8d7f289@gmail.com>
	<da2dd400-8055-3777-60a3-89c1b8a34df5@protonmail.com>
	<CAO2sX30tkfHK=CR5Bz717rOKEYxyw5iXRiqfLW=BiYBtVAXffA@mail.gmail.com>
	<8dc2aaf3-191a-b2f6-a4a2-0e55306d65@brandt-slint.study.home>
In-Reply-To: <8dc2aaf3-191a-b2f6-a4a2-0e55306d65@brandt-slint.study.home>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 219KIX1W005586
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCgpqdXN0IGEgZmV3IGlubGluZSBjb21tZW50cyBiZWxvdwoKTGUgMDkvMDIvMjAyMiDDoCAy
MDo0NSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IAo+
IEksIGZvciBleGFtcGxlLCBjdXJyZW50bHkgaGF2ZSB0aGUgUmFpbmJvd3N0cmVhbSBUd2l0dGVy
IGNsaWVudCBvcGVuIGluIFRUWTEsCj4gbXB2IHBsYXlpbmcgYW4gaW50ZXJuZXQgc3RhdGlvbiBp
biBUVFkyIGFuZCB0aGlzIGFscGluZSBpbiBUVFkzLiBJIHN0aWxsIGhhdmUKPiBxdWl0ZSBhIGZl
dyBUVFlzIGF2YWlsYWJsZSBmb3IgdXNlLCBzaG91bGQgSSBuZWVkIHRoZW0uCgpZb3UgY2FuICBo
YXZlIG1vcmUgdGhhbiA2IHR0eSBpZiB5b3Ugd2FudC4gSnVzdCBlZGl0IGFzIHJvb3QgL2V0Yy9p
bml0dGFiIGFuZAphZnRlciB0aGVzZSBsaW5lczoKCmM0OjEyMzQ1OnJlc3Bhd246L3NiaW4vYWdl
dHR5IDM4NDAwIHR0eTQgbGludXgKYzU6MTIzNDU6cmVzcGF3bjovc2Jpbi9hZ2V0dHkgMzg0MDAg
dHR5NSBsaW51eApjNjoxMjM0NTpyZXNwYXduOi9zYmluL2FnZXR0eSAzODQwMCB0dHk2IGxpbnV4
CgphcHBlbmQgc2ltaWxhciBvbmVzIHJlcGxhY2luZyB0dHk2IHdpdGggdHR5NywgdHR5OCwgdHR5
OSwgZXRjLgpCZSBjYXJlZnVsLCBhIHNtYWxsIHN5bnRheCBlcnJvciBpbiB0aGlzIGZpbGUgY2Fu
IHByZXZlbnQgU2xpbnQgdG8gc3RhcnQgPHNtaWxlPgoKYWxzbyB5b3UgY2FuIHR5cGUgc3RhcnR4
IGZyb20gYW55IHR0eSwgY3VycmVudGx5IHRoaXMgd2lsbCB1c2UgdHR5PG4rNj4KRm9yIGluc3Rh
bmNlIGlmIHlvdSB0eXBlIHN0YXJ0eCBmb20gdHR5MiB0aGUgWCBzZXNzaW9uIHdpbGwgZ28gaW4g
dHR5OC4KCllvdSBjYW4gZXZlbiBzdGFydCBzZXZlcmFsIGdyYXBoaWNhbCBzZXNzaW9ucyB0aGlz
IHdheS4gVGhhdCB0aGUgbWluaW1hbGlzdCBpbgp5b3Ugd2lsbCBwcm9iYWJseSB3aWxsIG5vdCBs
aWtlLi4uCgo+IFRoaXMgaXMgd2hlcmUgYSBXTSBzdWNoIGFzIHJhdHBvaXNvbiB3b3VsZCBtYWtl
IHlvdXIgbGlmZSBlYXNpZXIsIGlmLCBmb3IKPiBleGFtcGxlLCB5b3UgZG9uJ3Qgd2FudCB0byB1
c2UgdGhlIENMSSBiYXNlZCBtcHYgbWVkaWEgcGxheWVyLCB5b3UgY291bGQgdXNlIFZMQwo+IGlu
IGFuIFhTZXNzaW9uLCBvciBUaHVuZGVyYmlyZCBmb3IgZW1haWwgaW4gc3RlYWQgb2YgYWxwaW5l
LgoKWW91IHByb2JhYmx5IGtub3cgdGhhdCwgYnV0IHlvdSBjYW4gYXMgd2VsbCB1c2UgbXB2IGFz
IHdlbGwgYXMgdmxjIGluIGFuIHhzZXNzaW9uCgpDaGVlcnMsCkRpZGllcgotLQpEaWRpZXIgU3Bh
aWVyClNsaW50IG1haW50YWluZXIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0

