Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 828691D9AE7
	for <lists+blinux-list@lfdr.de>; Tue, 19 May 2020 17:13:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589901207;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uKIp0IJZYhsJjBOPssP5CqQz/8NdBh/X76ed8k2QT8E=;
	b=D6DqdvspyL8Y0K3UzeH0pMDd96Ewpx4/W4kudYl8+X4OPwErH+PEb0SfvKdjbB18sDUcx1
	iWOywVRzwfx0FArRtJ3Ry+yAhjdFcWHUKnChEaTFZXk+CbEyUGwfiW7Gr/v6APd5eDyP1H
	bxkzV/9aBFZ9sR27JB5o/i7zdFcqRS0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-469-tuWUCDb6NluizvJK24cNtw-1; Tue, 19 May 2020 11:13:25 -0400
X-MC-Unique: tuWUCDb6NluizvJK24cNtw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DE2FF1B18BC7;
	Tue, 19 May 2020 15:13:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A36FD5799C;
	Tue, 19 May 2020 15:13:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0127F1809542;
	Tue, 19 May 2020 15:13:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04JFA0eQ001347 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 19 May 2020 11:10:01 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BECA51006E28; Tue, 19 May 2020 15:10:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AFD2C1006ED4
	for <blinux-list@redhat.com>; Tue, 19 May 2020 15:09:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8283B101A526
	for <blinux-list@redhat.com>; Tue, 19 May 2020 15:09:57 +0000 (UTC)
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com
	[209.85.210.51]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-459-qgVr3QwCNK2NtILzCjtjPg-1; Tue, 19 May 2020 11:09:55 -0400
X-MC-Unique: qgVr3QwCNK2NtILzCjtjPg-1
Received: by mail-ot1-f51.google.com with SMTP id c3so11301920otr.12
	for <blinux-list@redhat.com>; Tue, 19 May 2020 08:09:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=/OH6Uxm1oj0MK+6DXCj4ySWR0yUUIm9rE4/3mxZIq1o=;
	b=KsTiHbL+vq9TnonEGPlAxUnFZ3MIyaaJWT2RMz7aKQuDXLwoJXNuX9Pd17MfoYzXYk
	lVJd6s76N+WOgh0iHa5GXPm9m3s0MNRgegPYZz5Hth3hlSmyQ66hfJCfPOleFplbzQY4
	jenxRFWluXQuMp4JEcNiZLqKNU12WGzkvGvfdUDUotV8frh4osStdTnaGXW/8erjrLti
	zto8X53p57ilhlliarHg+cTm7ApB0/060PgPDDYwpl5LVFo4IrMGonqdwaf+/Zn9DgGw
	FIonbN9YYX6WByOl5Nwt/a2oKYmqUi2t2dUixBMnw3MtByKNyBU+J/dLH3xDmXg4dY8T
	NxpQ==
X-Gm-Message-State: AOAM532OdSfZ33hXV8Mm7LXYim/zyFlBI/5s+9xQdDtwdnacsQKyPeyS
	CRQR9Lj5cfF6PU3tupfpxc7+7Ufg
X-Google-Smtp-Source: ABdhPJx6gyB6D7VvzvvJYslNZm4j0r6bQFsg1x7tJJ6mQZHrADLcDmHFWwbITIsOHIW1PIxNTSYwtQ==
X-Received: by 2002:a9d:7dc6:: with SMTP id k6mr12238511otn.218.1589900994092; 
	Tue, 19 May 2020 08:09:54 -0700 (PDT)
Received: from ?IPv6:2601:3c2:8200:9360:d4ad:2b56:857f:323c?
	([2601:3c2:8200:9360:d4ad:2b56:857f:323c])
	by smtp.gmail.com with ESMTPSA id t2sm1091454otq.54.2020.05.19.08.09.52
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 19 May 2020 08:09:53 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: Manjaro linux
Date: Tue, 19 May 2020 10:09:51 -0500
References: <E811AB13-AE96-4C85-93CB-894ED5675931@gmail.com>
	<alpine.NEB.2.21.2005121221430.13470@panix1.panix.com>
	<CAO2sX32dVWnC1F8EQuQef1_SPStF0=r1c-k+JSz4M+Jm7z82PQ@mail.gmail.com>
	<c33e7e92-9eb7-3b58-afb4-9285eb928b86@gmail.com>
	<c638d1b2-f0c6-f973-1cbe-fe38897bbd3e@ukr.net>
	<969c7e66-e61f-d352-122a-18ed57b8cfe8@gmail.com>
	<18fdcb89-5a11-0d32-f7f6-22a15423fe28@ukr.net>
To: blinux-list@redhat.com
In-Reply-To: <18fdcb89-5a11-0d32-f7f6-22a15423fe28@ukr.net>
Message-Id: <1EC35D64-7A95-4447-88C3-C21A1EEFF1CD@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 04JFA0eQ001347
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSB3aWxsIHRyeSB0aGF0LgoKPiBPbiBNYXkgMTIsIDIwMjAsIGF0IDEyOjQ0IFBNLCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90
ZToKPiAKPiBJZiBFRkkgaXMgbm90IHVzZWQsIHRoZW4gYWZ0ZXIgdGhlIGdyZWV0aW5nIHNvdW5k
IHRoZSB1c2VyIG11c3QgcHJlc3MgVGFiIG9uY2UgYW5kIHRoZW4gcHJlc3MgUmV0dXJuIG9yIFNw
YWNlLiBVYnVudHUgd2lsbCBib290IGludG8gbGl2ZSBtb2RlLiBUaGVuIHlvdSBjYW4gZW5hYmxl
IGFzc2lzdGl2ZSB0ZWNobm9sb2d5IC4uLgo+IAo+IDEyLjA1LjIwIDIwOjM1LCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uINC/0LjRiNC1Ogo+PiBBaCB5ZXMuIFRoYXQgYnVnIHJl
cG9ydCBzZWVtcyB0byBiZSBtdWNoIG1vcmUgZGV0YWlsZWQgdGhhbiB3aGF0IHNvbWUgdXNlcnMg
d2VyZSB0ZWxsaW5nIG1lLiBPZGRseSBlbm91Z2gsICJUcnkgVWJ1bnR1IiB3b3JrcyB3aXRoIEJJ
T1Mgb24gdGhlIEdOT01FIHZlcnNpb24uIEkgaGF2ZSBiZWVuIHRvbGQgdGhhdCB0aGUKPj4gc3Vk
byAtZSB1YmlxdWl0eQo+PiB3b3JrLWFyb3VuZCBkb2VzIGFwcGFyZW50bHkgZml4IHRoZSBwcm9i
bGVtLCBhbHRob3VnaCBpZiB5b3UgY2FuIGdldCB0byB0aGUgYXNzaXN0aXZlIHRlY2hub2xvZ3kg
c2V0dGluZywgdGhhdCBzaG91bGQgYWxzbyBmaXggaXQuIFRoYW5rcyBmb3IgdGhlIGRldGFpbGVk
IGxpbmsuCj4+IH5LeWxlCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRo
YXQuY29tCj4+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0
dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

