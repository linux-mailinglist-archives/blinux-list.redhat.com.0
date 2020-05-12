Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id E9AD41CFB6E
	for <lists+blinux-list@lfdr.de>; Tue, 12 May 2020 18:58:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589302712;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GjZiwyY3zfsRyaQUiHQ95kz6TB2TMO9z+OxRE4lOXUQ=;
	b=Kz2v0ZSzKLXjA8bpNeGC3dmusXD5NcfwWgDlIhepRUqUZtvRMyULcZapMo6y2y2VWeSeyo
	dB7nM7isXK4wO9FL3LRxZevIfFYze6d0Y6Sp0HrorqiAYI/7hQOxZaKaUxZphWpJjBuxx0
	DupTDI7+qcBld5fxG+8jBy7tFfB5m30=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-336-FMxvP_asPT646AyCbjnLLQ-1; Tue, 12 May 2020 12:58:28 -0400
X-MC-Unique: FMxvP_asPT646AyCbjnLLQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CF0E81005510;
	Tue, 12 May 2020 16:58:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 61E331A924;
	Tue, 12 May 2020 16:58:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BD5771809547;
	Tue, 12 May 2020 16:58:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04CGwFrn032235 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 May 2020 12:58:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7F2D02166BA4; Tue, 12 May 2020 16:58:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7AAB92166BA0
	for <blinux-list@redhat.com>; Tue, 12 May 2020 16:58:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 635BF916108
	for <blinux-list@redhat.com>; Tue, 12 May 2020 16:58:13 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
	[209.85.128.51]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-343-jdVEgnm0P2CeTFhBdhnwkw-1; Tue, 12 May 2020 12:58:09 -0400
X-MC-Unique: jdVEgnm0P2CeTFhBdhnwkw-1
Received: by mail-wm1-f51.google.com with SMTP id m24so13054534wml.2
	for <blinux-list@redhat.com>; Tue, 12 May 2020 09:58:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=cGmwKLFoArM681gMK2peqtLcARNCrD8vFIrh9LMQ2YY=;
	b=Sr+SwMQaUHc6geqPfhPOVqTTgWOqoZX6kOkxA1HBaKUx+ONay4vvzQNZ+aPEbVb0mm
	tW9ixrrleGQRmjmU8OwVbU8cNVYdzaibm+8D+ayn9YlclqhTKDcp4tt1ID0DZF9uiZv3
	NiSIzJlNgVi8VU75zsOhJHaRiuARRAyO/bFhx03OwcG7vtT2pUIY0A7HKL1Kg2unlUee
	yHPCE6KwES+oNoceBJdiKvIz+ry4Qo/HiZNP3mkpranpXOZA5VAshLe6SrAYpmZZg0nw
	V9fs9TyBe4RUY2nY/a3ixxEPp6KNnXKpxLoU089GuF5iAI/ibGlo8DDLkhYMPCvfZ8Tk
	r/9w==
X-Gm-Message-State: AGi0PuZqKM3UoxCizYQ0PpkKXWo3IxmnUSS6EhYwa/jVZrFBUi6OGZjq
	Dmiqb6wA1yg5l0IZlYisVHXmveZgtLTwQBKf0FKBe+4f
X-Google-Smtp-Source: APiQypK/cPvRecwHvq2RqQFuv1eOR5MsIZE5Yy5hSkO8IonikSBh6tdQLBiZNR2RdKNhR3tc8H2/KTEdXgaZ/v3OTAc=
X-Received: by 2002:a7b:cc0f:: with SMTP id f15mr40119084wmh.78.1589302687752; 
	Tue, 12 May 2020 09:58:07 -0700 (PDT)
MIME-Version: 1.0
References: <E811AB13-AE96-4C85-93CB-894ED5675931@gmail.com>
In-Reply-To: <E811AB13-AE96-4C85-93CB-894ED5675931@gmail.com>
Date: Tue, 12 May 2020 12:57:57 -0400
Message-ID: <CAJKfDDEMOM793Q8gxkgzwVZo2-pfhLTWuQ4b5fRw6=u7C86PdA@mail.gmail.com>
Subject: Re: Manjaro linux
To: blinux-list <blinux-list@redhat.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Q2FsYW1hcmVzIGluc3RhbGxlciBpcyB1bmFjY2Vzc2libGUsIHRoaXMga2lsbGVkIFNvbmFyIExp
bnV4IHRoYXQgbW92ZWQgdG8KaXQgYXMgYmFzZSwgdGhlIGFjY2Vzc2liaWxpdHkgYnVnIHNpdCB1
bmZpeGVkIGZvciBvdmVyIDMgeWVhcnMsIGl0J3MgYSBiaXQKd2h5IEkgYW0gbm90IGZvbmQgb2Yg
TWFuamFybyBzaW5jZS4KClRoZXJlJ3MgVGFsa2luZyBBcmNoIEkgdGhpbmsgaWYgeW91IHdhbnQg
QXJjaGxpbnV4LgoKSW4gbXkgY2FzZSwgSSB0cmllZCB0byBnYXR0ZXIgdmludXggYW5kIHNvbmFy
IHRlYW0gdG8gY3JlYXRlIGEgbmV3CmFjY2Vzc2liaWxpdHkgaW50ZW5kZWQgZGlzdHJpYnV0aW9u
IHdpdGggYWRkZWQgZmVhdHVyZXMgdGhhdCBJIHN0aWxsIGtlZXAKZm9yIG15c2VsZiBzaW5jZSBJ
IGFpbSB0byBzdG9wIGV4Y2Vzc2l2ZSBmcmFnbWVudGF0aW9uIG9mIExpbnV4CmRpc3RyaWJ1dGlv
bnMgc29tZWhvdyBhbmQgSSBuZWVkIHRvIGhhdmUgc29tZSBmZWF0dXJlcyB0byBncmFiIGVub3Vn
aApwZW9wbGUgdG8gYWNoaWV2ZSBteSBnb2Fscy4KCkxlIG1hci4gMTIgbWFpIDIwMjAgMTA6NDMs
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPApibGludXgtbGlzdEByZWRoYXQu
Y29tPiBhIMOpY3JpdCA6Cgo+IERvZXMgTWFuamFybyBsaW51eCBoYXZlIG9yY2EgaW4gaXRzIGlu
c3RhbGxlcgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4g
aHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KPgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

