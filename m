Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C411C44545A
	for <lists+blinux-list@lfdr.de>; Thu,  4 Nov 2021 14:56:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636034216;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=EUA0ACFbEH7TfK2VL4ztmpKzHWwe/Sm3TZG2VzutcOA=;
	b=M/hVsexUtTg7pvksN0/IDESb4BWuN0BITymh7KWDajmvz+P3DwOglpRhlI6nLBYJC7x9X9
	XUqmSTbIJ1Wq1A3+aZ74hOJVI7JyMk0T5bkXswTxIDqOCyTZlllIznI/pCwFMxKI7MVEyO
	nM8Mp4ViWmbCuA/ztfLXAcXl7ykwVMs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-520-pEIFdrXDN1ibAZm1bYpKqQ-1; Thu, 04 Nov 2021 09:56:52 -0400
X-MC-Unique: pEIFdrXDN1ibAZm1bYpKqQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 79B0D107B0F0;
	Thu,  4 Nov 2021 13:56:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9EB0B101E814;
	Thu,  4 Nov 2021 13:56:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 968C2180BAD2;
	Thu,  4 Nov 2021 13:56:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A4Dueki013761 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 4 Nov 2021 09:56:40 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9DD1F40CFD0A; Thu,  4 Nov 2021 13:56:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9744940CFD11
	for <blinux-list@redhat.com>; Thu,  4 Nov 2021 13:56:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 701D218A01AD
	for <blinux-list@redhat.com>; Thu,  4 Nov 2021 13:56:40 +0000 (UTC)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com
	[209.85.219.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-412-Yn_cua3lPZ6spsin2yaYKA-1; Thu, 04 Nov 2021 09:56:37 -0400
X-MC-Unique: Yn_cua3lPZ6spsin2yaYKA-1
Received: by mail-yb1-f172.google.com with SMTP id d10so14679798ybe.3
	for <blinux-list@redhat.com>; Thu, 04 Nov 2021 06:56:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=ZEZgbof171ARYt/AGI16wdpepEywTgxPSZu+qUmPRi0=;
	b=pUzzapqOTlQXdTqbgSyNkw9sk9eTtRUTAqK0XQz/u5dqiIlC2PcvE6NLTfA0mw7zyK
	2xSUVAUfjz8J3WzPdectZyI9BepPVlACNa4qFjGsucrGgHkA7STsU7ysrdm5eqaq9GYJ
	1m3wt909MQJYTzRnXc4F8w1zB4VtloZkY77Z8xEjkPjzsXYjzpJm3JHKiW5HiXwlb/TM
	KkhCMvjATZboMWlCVypo8j9Cha7O5DJgBc26VDnNZos/I5tjzR8irkxIzBkS4HLqLyWF
	d2FqKWq62GWGQaI1WO47JfNkzv6LaJLVg7CIvM8V/uZlAS8x8da5y78I+e/iE0JMtpEz
	7szg==
X-Gm-Message-State: AOAM532oHq5qqgSRwDDyzV55aB6K87cFpOWokc/rPxQkKdfR19F7lQzs
	axsEl8qeEPmHITJMryDYKOwbYZfZ1+KHJ2MmdP1YakW1Cb0=
X-Google-Smtp-Source: ABdhPJy+A1Im8bd1U0968e+EJRXPMUY95oqZt7yLVQtqEl2xfwwLGozhqAq15KHwMfO+K1BgpsGrgSHmw2n/WuCqTA4=
X-Received: by 2002:a25:b181:: with SMTP id h1mr33341380ybj.76.1636034196763; 
	Thu, 04 Nov 2021 06:56:36 -0700 (PDT)
MIME-Version: 1.0
References: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
	<1f2e65f8-3d25-a02f-39d3-59e80f4270af@gmail.com>
	<C4D8F75A-ADC8-4F6F-8F4C-9AE2BB8B0792@cfcl.com>
	<0156E832-953A-4EE3-BBC7-8ACB8FBE5DE3@icloud.com>
In-Reply-To: <0156E832-953A-4EE3-BBC7-8ACB8FBE5DE3@icloud.com>
Date: Thu, 4 Nov 2021 08:56:24 -0500
Message-ID: <CAGJxbF4mikSfj9O8UVb3JJUhpOCwjzkB-G_vZPmMwaHMkRpmvA@mail.gmail.com>
Subject: Re: FYI - The Yggdrasil Screen Reader Project
To: Linux for blind general discussion <blinux-list@redhat.com>
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SXQncyBwcm9iYWJseSB1c2luZyBzcGVlY2gtZGlzcGF0Y2hlci4KRGV2aW4gUHJhdGVyCnIuZC50
LnByYXRlckBnbWFpbC5jb20KCgoKCk9uIFRodSwgTm92IDQsIDIwMjEgYXQgODo1MCBBTSBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDwKYmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4g
d3JvdGU6Cgo+IEhpLAo+IEhhdmUgYW55IG9mIHlvdSB0cmllZCB0aGlzIG5ldyBzY3JlZW4gcmVh
ZGVyPwo+IElzIGl0IHVzaW5nIFNwZWFrPwo+Cj4gVGhhbmtzLAo+IFJvYgo+Cj4KPiA+IE9uIE5v
diAxLCAyMDIxLCBhdCA5OjI2IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IDwKPiBibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiA+Cj4gPiBGV0lXLCBJIGp1c3Qg
cmFuIGFjcm9zcyB0aGlzIGluIEhhY2tlciBOZXdzLi4uCj4gPgo+ID4+IEFjY2Vzc2liaWxpdHkg
b24gTGludXggaGFzIGhpc3RvcmljYWxseSBiZWVuIHVuZGVyLWRldmVsb3BlZCwKPiB1bmRlci1t
YWludGFpbmVkLCBhbmQsIHRoZXJlZm9yZSwgZ2FpbmVkIGEgcmVwdXRhdGlvbiBvZiBiZWluZyBx
dWl0ZQo+IHBhaW5mdWwgdG8gdXNlIGFzIGEgZGFpbHkgZHJpdmVyIGFtb25nIGRpc2FibGVkIHBl
b3BsZS4gV2Ugd2FudCB0byBjaGFuZ2UKPiB0aGF0Lgo+ID4+Cj4gPj4gWWdnZHJhc2lsIGlzIGEg
bmV3IHByb2plY3QgdGhhdCBhaW1zIHRvIGNyZWF0ZSBhIGJldHRlciBMaW51eCBzY3JlZW4KPiBy
ZWFkZXIsIHdyaXR0ZW4gaW4gUnVzdC4gVGhyb3VnaCB0aGlzIHByb2plY3QsIHdlIGFpbSB0byBw
cm92aWRlIGEgYmV0dGVyCj4gc2NyZWVuIHJlYWRpbmcgZXhwZXJpZW5jZSB0aGFuIHRoZSBvbmUg
d2UgY3VycmVudGx5IGhhdmUgaW4gT3JjYS4gQSBzY3JlZW4KPiByZWFkZXIgd2l0aCBhbGwgdGhl
IG1vZGVybiBmZWF0dXJlcyBhIFdpbmRvd3Mgb3IgTWFjT1MgdXNlciB3b3VsZCBleHBlY3QKPiBm
cm9tIHRoZWlyIGNvbXB1dGVycywgc29tZSBvZiB3aGljaCBhcmUgb3V0bGluZWQgYmVsb3cuCj4g
Pj4KPiA+PiAgICAgIOKAoiBPYmplY3QgbmF2aWdhdGlvbgo+ID4+ICAgICAg4oCiIE9DUgo+ID4+
ICAgICAg4oCiIGN1c3RvbWlzYWJsZSBuYXZpZ2F0aW9uIGNvbW1hbmRzCj4gPj4gICAgICDigKIg
YSBwb3dlcmZ1bCBhZGQtb24gbWVjaGFuaXNtCj4gPj4gICAgICDigKIgYW5kIG1vcmUuCj4gPgo+
ID4gVGhlIFlnZ2RyYXNpbCBTY3JlZW4gUmVhZGVyIFByb2plY3QKPiA+IGh0dHBzOi8veWdnZHJh
c2lsLXNyLmdpdGh1Yi5pby8KPiA+IGh0dHBzOi8vbmV3cy55Y29tYmluYXRvci5jb20vaXRlbT9p
ZD0yOTA1NjE2OAo+ID4KPiA+IC0gUmljaCBNb3Jpbgo+ID4KPiA+Cj4gPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4gPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KPgo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0
QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdA==

