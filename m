Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E57FB460B1B
	for <lists+blinux-list@lfdr.de>; Mon, 29 Nov 2021 00:26:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638142008;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=W7mbjQ19pulhbgW01kA8BD+ArLD/kC1AnYRhDFzT038=;
	b=CL24+S2TzTlZcet4h3l6yU26dQB3NM7hW/Rd8YHRjfZD0IIDN11OwgVdb2fdLdJgBKbH9M
	YpYIMslTdzYbf7//huguso6oVuR1eQ/s3oTTYZRBai2d4/L224e2lvUfFdteoxCuWuykBY
	WOicf4c2D3WuFLYVlNfhq4giVeZPsQ8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-381-8nFwfQBBNbSpwk5wfQ8tfg-1; Sun, 28 Nov 2021 18:26:45 -0500
X-MC-Unique: 8nFwfQBBNbSpwk5wfQ8tfg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 43995101AFA7;
	Sun, 28 Nov 2021 23:26:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 80F7976612;
	Sun, 28 Nov 2021 23:26:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2E9D91809C89;
	Sun, 28 Nov 2021 23:26:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ASNQWYB030434 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 28 Nov 2021 18:26:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2244E1410DD8; Sun, 28 Nov 2021 23:26:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1E2C11410DD5
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 23:26:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 04A8D808784
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 23:26:32 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com
	[209.85.219.48]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-316-hXBxlv4fPfieT9RSUAJ6XQ-1; Sun, 28 Nov 2021 18:26:30 -0500
X-MC-Unique: hXBxlv4fPfieT9RSUAJ6XQ-1
Received: by mail-qv1-f48.google.com with SMTP id u16so12720541qvk.4
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 15:26:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=+6kEsieDko2CTokQaLoZIGrrIM5XnXG/Uxd8lfTuZJA=;
	b=vSSoCSAr3CTnB4Qa+otQs5mn/tyxNtFourT4QcSc3jISDcedEp8l0KPSGFpzf5zkMo
	g88ENseiNogfXkuyPfTZ+gppKMG4TZVKFJLW0tQC7rsy5b0Z2hbIm9ziyTN5PS3cZfvc
	3J2wjke271+W/2yQTOZeNqf86S6WORoa9lNHpoYCvmZQhbvNbrqAX3gaypem1qXb9o0H
	gALdCOJK13JJEadOOKeYelCM0kOGfkYFZkj2Cqd3MOoXcTFbYyavT0RYmFzIP+/GAFf0
	apaqPqlsG81qjv+J15OGwx1KssFIeXTO09NQYH716nMocK4/caPl3uBBcKphzzptnexy
	gYUA==
X-Gm-Message-State: AOAM533UIZ4NExQ42PYDCB2kpye9o6l2Ya0pIwxqVVLy+ovZsLgoWUvg
	T8ofRMFLN5+FIuRtHxL+nE312R1cfl4=
X-Google-Smtp-Source: ABdhPJylJ05XI6GlbriRUL0dSyMlOaOEFNcTZrntD/zU30ASnN8ra6Ck7OvMIRXF0rN4dMAFq3XgWA==
X-Received: by 2002:a05:6214:21ed:: with SMTP id
	p13mr27122781qvj.111.1638141989505; 
	Sun, 28 Nov 2021 15:26:29 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	k16sm7758375qtx.92.2021.11.28.15.26.29 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 28 Nov 2021 15:26:29 -0800 (PST)
Subject: Re: WEBM, is it the default option of yt-dlp downloads?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <8e070d49-f0ee-f2b8-9086-c38fbd232003@gmail.com>
	<fda47b2b-0bad-b566-b60d-942b64720311@slint.fr>
	<ed84ed62-9e28-7054-9f49-aa505ada1a1f@hubert-humphrey.com>
	<91c67ade-b15f-7130-5641-980ffc0e1a6f@slint.fr>
	<c692751c-9531-b44d-4f30-324fed10f80b@slint.fr>
	<Pine.LNX.4.64.2111281548330.113324@server2.shellworld.net>
	<0e2c01d4-2455-8496-20ac-b94d6d1a97dc@gmail.com>
Message-ID: <8f75b23b-de19-adac-e05b-c200bd499000@gmail.com>
Date: Sun, 28 Nov 2021 18:26:28 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <0e2c01d4-2455-8496-20ac-b94d6d1a97dc@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSByZWFkIHRoZSBxdWVzdGlvbnMgYW5kIHRoZcKgIHJlcGxpZXMgb24gdGhpcyBsaXN0IGFuZCBm
aW5kIG15c2VsZiBsb3N0LCBhbmQgCndvbmRlciBpZiBJIG5lZWQgYSBtYXN0ZXJzIGluIGNvbXB1
dGVyIHNjaWVuY2VzIHRvIGtlZXAgdXAhISBoYWhhaGFoYQoKQW5kIHRoaXMgaXMgZXhhY3RseSB0
aGUgcHJvYmxlbSBJIGhhdmUsIGFuZCB3aHkgSSBnZW5lcmFsbHkgbGlrZSB0byBoZWxwIHBlb3Bs
ZSAKb25lLW9uLW9uZSB3aXRoIHdoYXQgd29ya3MgcmlnaHQgb3V0IG9mIHRoZSBib3ggcmF0aGVy
IHRoYW4gZ2V0dGluZyBjYXVnaHQgdXAgaW4gCnRoZSBtb3JlIGVzb3RlcmljIHBvd2VyIHVzZXIg
c3R1ZmYuIExpbnV4IGlzIG5vIGhhcmRlciB0byB1c2Ugbm9yIG1vcmUgb2NjdWx0IAp0aGFuIGFu
eSBvdGhlciBPUywgaXQganVzdCBoYXMgdGhpcyByZXB1dGF0aW9uIGJlY2F1c2Ugb2YgbGllcyBz
cHJlYWQgYnkgCmNvcnBvcmF0ZSBlbnRpdGllcyB0aGF0IG1ha2Ugb3RoZXIgb3BlcmF0aW5nIHN5
c3RlbXMsIGFzIHdlbGwgYXMgd2VsbC1tZWFuaW5nIApwZW9wbGUgd2hvIHdhbnQgZXZlcnlvbmUg
dG8gaGF2ZSB0aGUgcG93ZXIgdXNlciBleHBlcmllbmNlLiBUaGVyZSdzIG5vdGhpbmcgYXQgCmFs
bCB3cm9uZyB3aXRoIGFsbG93aW5nIG90aGVycyB0byBoYXZlIHRoZSBwb3dlciB1c2VyIGV4cGVy
aWVuY2UsIHdoaWNoIGlzIHdoeSAKbm8gTGludXggZGlzdHJpYnV0aW9uIHdpbGwgZXZlciB0YWtl
IHRoYXQgZXhwZXJpZW5jZSBhbmQgdGhvc2UgYWJpbGl0aWVzIGF3YXkgCmZyb20gYW55b25lLiBU
aGUgcHJvYmxlbSBpcyB0aGF0IHRoaXMgcG93ZXIgdXNlciBleHBlcmllbmNlIGlzIG5vdCBhdCBh
bGwgZm9yIApldmVyeW9uZSwgYW5kIG1hbnkgcGVvcGxlIGp1c3Qgd2FudCB0byBzaXQgZG93biBh
dCB0aGVpciBjb21wdXRlcnMgYW5kIGp1c3QgZ2V0IAp0aGluZ3MgZG9uZSBpbiB0aGUgbW9zdCBl
ZmZpY2llbnQgYW5kIHByb2R1Y3RpdmUgd2F5IHBvc3NpYmxlLCBhbmQgR05VL0xpbnV4IGlzIApi
eSBmYXIgdGhlIGJlc3QgT1MgZm9yIHRoaXMgYXMgd2VsbCwgZGVzcGl0ZSBldmVyeXRoaW5nIHBl
b3BsZSBvbiB0aGlzIGFuZCBvdGhlciAKbGlzdHMgd3JpdGUgdG8gdGhlIGNvbnRyYXJ5LiBUaGUg
b25seSByZWFsIGRpZmZlcmVuY2UgYmV0d2VlbiBhbnkgTGludXggCmRpc3RyaWJ1dGlvbiBhbmQg
YW55IG90aGVyIE9TIGlzIHRoYXQgd2l0aCBhIExpbnV4IGRpc3RyaWJ1dGlvbiwgeW91IGhhdmUg
bW9yZSAKY2hvaWNlcyBhdmFpbGFibGUgZm9yIGFueSBza2lsbCBsZXZlbCB1bmRlciB0aGUgc3Vu
IHRoYW4geW91IGdldCB3aXRoIGFueSBvdGhlciAKT1MsIGFsbCBhdmFpbGFibGUgZnJvbSBldmVu
IGEgY2hvaWNlIG9mIHNvZnR3YXJlIHJlcG9zaXRvcmllcy4gV2hlcmVhcyB0aGlzIGNhbiAKYmUg
c2VlbiBhcyBhIGJhZCB0aGluZywgaXQgaXMgYWN0dWFsbHkgYSB2ZXJ5IGdvb2QgdGhpbmcuIE5v
LCB5b3UgZG9uJ3QgaGF2ZSB0byAKaGF2ZSBhIG1hc3RlcidzIGRlZ3JlZSBpbiBjb21wdXRlciBz
Y2llbmNlIHRvIHVzZSBMaW51eCwgbm9yIGRvIHlvdSBldmVuIGhhdmUgdG8gCmtub3cgaG93IHRv
IGJlIGEgZmFpcmx5IGNvbXBldGVudCBwcm9ncmFtbWVyLiBZb3Ugb25seSBuZWVkIHRvIGtub3cg
aG93IHNvZnR3YXJlIApyZXBvc2l0b3JpZXMgd29yayBhbmQgaG93IHRvIGZpbmQgd2hhdCB5b3Ug
bmVlZCwgd2hpY2ggaXMgc29tZXRoaW5nIHRoYXQgCkdOVS9MaW51eCBtYWtlcyBtdWNoIGVhc2ll
ciB0aGFuIGFsbCBvdGhlciBvcGVyYXRpbmcgc3lzdGVtcywgYWx0aG91Z2ggc29tZSBkbyAKbWFr
ZSB0aGlzIGVhc2llciB0aGFuIG90aGVycy4gU3RpbGwsIGl0J3MgYWxsIGFib3V0IGNob2ljZSBh
bmQgYWxsIGFib3V0IApmcmVlZG9tLCBidXQgbWFueSBvZiB0aGUgYXZhaWxhYmxlIGNob2ljZXMg
YWN0dWFsbHkgbWFrZSBpdCBlYXNpZXIgdG8ganVzdCBnZXQgCnRoaW5ncyBkb25lLCBhbmQgd2Ug
ZG9uJ3QgaGF2ZSB0byBiZSBhYnNvbHV0ZSBiZWdpbm5lcnMgaW4gb3JkZXIgdG8gZ2V0IGFueSB1
c2UgCm91dCBvZiBvdXIgT1MgZWl0aGVyLCBzaW5jZSBpdCBjYW4gZ3JvdyBmcm9tIHRoZSBhYnNv
bHV0ZSBiZWdpbm5lciBhbGwgdGhlIHdheSAKdXAgdG8gdGhlIG1vc3Qgc29waGlzdGljYXRlZCBw
b3dlciB1c2VyIGV4cGVyaWVuY2UgYmV0dGVyIHRoYW4gYW55IG90aGVyIE9TIApjdXJyZW50bHkg
b24gdGhlIG1hcmtldC4Kfkt5bGUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQu
Y29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3Q=

