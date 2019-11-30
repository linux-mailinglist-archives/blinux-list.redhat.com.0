Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 917D010DF31
	for <lists+blinux-list@lfdr.de>; Sat, 30 Nov 2019 21:17:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1575145073;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=iH113V8WX29Xiv5yoTjePIHA4C2v13PG9Jtx3NPH2w8=;
	b=aRVkMKXURiE/vO00/Xo60xCrRXEQTziMSVEk/Yr3AVeSp8gudr5jp5LI9J/qfLQp5Auwsi
	6tUsqzsT2etlo28EdYKIdXSy2H/zIWUcD2moOCXeXeKT9QjxQpbkQGMNp4SOoAPi90E0mG
	GziSHJ6jypHOhkx04Uu9SYcU6iXF8k0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-198-77GYJPq8NOKgLMS2jqVJiQ-1; Sat, 30 Nov 2019 15:17:51 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6254580183C;
	Sat, 30 Nov 2019 20:17:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B39A519C58;
	Sat, 30 Nov 2019 20:17:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EA21D1809567;
	Sat, 30 Nov 2019 20:17:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xAUKHbUc019555 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 30 Nov 2019 15:17:38 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C182820316E8; Sat, 30 Nov 2019 20:17:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BD66420316E0
	for <blinux-list@redhat.com>; Sat, 30 Nov 2019 20:17:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 935288F77EB
	for <blinux-list@redhat.com>; Sat, 30 Nov 2019 20:17:35 +0000 (UTC)
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com
	[209.85.167.171]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-177-vspplbDtMkKjd7alDiBQrA-1; Sat, 30 Nov 2019 15:17:33 -0500
Received: by mail-oi1-f171.google.com with SMTP id l20so28924184oie.10
	for <blinux-list@redhat.com>; Sat, 30 Nov 2019 12:17:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=Ir7z/h/PRJ3bONht0D9sYPr0tBokstBJAxagbLfkJnI=;
	b=pmXJE5bwDona5ydm9WlC585xVNG1WgMJfc57HAaIPLMFnO7vyzc9MDQGifFQ83LHae
	Y5L3rMpUdnLdoKdGC00yux/wqQksoS3uoXlNhF4R5a7i7CzV2o5cV5C81jqt8KFrQc2t
	LKKuo6fdKUfR85hDhxnJqCYb90J8YP+fUSf9igRsGxdl3fRtp3/edfL4C4IvwiBJOY+Z
	I9BOsu6+ynx8pTRV1yOFePAxCr3/OQDpL2nYIiykS2P28RXWyJLU2wKhmve6jWJJWKK1
	+yJQuwsqE0x2IVbeJjZKHoeHqd3oqHrEAM/B3iZlSdOylY3LcfMPUdcxyTd/8d8znMFq
	fYfw==
X-Gm-Message-State: APjAAAXbumAZEQ6lGKc+n2gmcmhXvT8pIYzPLvHEEjOTlmN6UhTNVz/2
	VlIshRXzll8LrJnu0SNTWwPrw5sV
X-Google-Smtp-Source: APXvYqyzDe9Sk4Cv5KI7xbMk2/s2FDrxTG4p0PLRwfPcGjNNSAnfounta0pdupMCU7+worOEX0PjoA==
X-Received: by 2002:aca:f083:: with SMTP id
	o125mr12960489oih.122.1575145052766; 
	Sat, 30 Nov 2019 12:17:32 -0800 (PST)
Received: from [192.168.1.71] ([2600:1700:81f0:1c10:cc72:9753:3329:5d0f])
	by smtp.gmail.com with ESMTPSA id
	l13sm8850451otp.46.2019.11.30.12.17.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 30 Nov 2019 12:17:31 -0800 (PST)
To: orca-list@gnome.org, "Blinux list" <blinux-list@redhat.com>
Subject: A question about how to get speech running on Ubuntu version 18.
	Please read below?
Date: Sat, 30 Nov 2019 12:17:30 -0800
Message-ID: <00ECC5AD-FF56-410F-9EA2-B8EB0DE98A23@gmail.com>
MIME-Version: 1.0
X-MC-Unique: vspplbDtMkKjd7alDiBQrA-1
X-MC-Unique: 77GYJPq8NOKgLMS2jqVJiQ-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id xAUKHbUc019555
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64

ICBIZWxsbyBldmVyeW9uZSwgSeKAmW0gdHJ5aW5nIHRvIHNldCB1cCBVYnVudHUgaW4gYSB2aXJ0
dWFsIG1hY2hpbmUuIApXaGF0IGNvbW1hbmQgZG8gSSBpc3N1ZSB0byBzdGFydCB0aGF0IHNwZWVj
aCB3aGljaCBJIGJlbGlldmUgaXMgYSAKZmVzdGl2YWwgc3BlZWNoIHBhY2thZ2UuIFdoaWNoIGlz
IGVtYmVkZGVkIGluIG9yY2EuIEFueSBnb29kIHN1Z2dlc3Rpb25zIApvbiB0aGlzIHF1ZXN0aW9u
PwoKU2luY2VyZWx5IE1hdXJpY2UgTWluZXMuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0
QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0

