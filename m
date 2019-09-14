Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD5EB2D21
	for <lists+blinux-list@lfdr.de>; Sat, 14 Sep 2019 23:29:01 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 1487B18C4269;
	Sat, 14 Sep 2019 21:28:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 235455D9E2;
	Sat, 14 Sep 2019 21:28:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B36244E58B;
	Sat, 14 Sep 2019 21:28:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
	[10.5.11.23])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x8ELSmqE001697 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 14 Sep 2019 17:28:48 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E2BA51F2; Sat, 14 Sep 2019 21:28:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx24.extmail.prod.ext.phx2.redhat.com
	[10.5.110.65])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DD64719C78
	for <blinux-list@redhat.com>; Sat, 14 Sep 2019 21:28:46 +0000 (UTC)
Received: from mail-yw1-f52.google.com (mail-yw1-f52.google.com
	[209.85.161.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id D132210CC1EF
	for <blinux-list@redhat.com>; Sat, 14 Sep 2019 21:28:45 +0000 (UTC)
Received: by mail-yw1-f52.google.com with SMTP id n126so11649438ywf.1
	for <blinux-list@redhat.com>; Sat, 14 Sep 2019 14:28:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:mime-version:subject:date:references:to:in-reply-to:message-id; 
	bh=SM/D/AofQQD0ED9H3H7jgJjfntV0pt3m7Fo8Sq8Ox7w=;
	b=S8xWGDyP6nye+fl6geFrxxgEW/CEblcXNuPy+kQgOuF3FZLiPjA0URDm34oyMaX7Qj
	h8NHybVyAlEL89+FZVzjYVIJYeIoDPQW0qZiE28O85szK6hwtxmtqf5B/DW0KOVQhFBX
	ZBlEb9eL/EkkAWMgfdlxzEpf9haFiayWUql+Lh8w2eyJbGNY4ISe1FyL6pvl7Wn3YrUA
	9IEtAguTWjfNwYxv4wEu/iEWWWbzD1cnDUhRR1QNcjZJUd6AbJebAID4vZmdxAmp3yKT
	wAl+TAPROTQ4ejzS4HHWm6GseeG3X1mPS78qP4HQwsFM1oEFYJK3Gn7kIeyc0XBYpm64
	dEWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:subject:date:references:to
	:in-reply-to:message-id;
	bh=SM/D/AofQQD0ED9H3H7jgJjfntV0pt3m7Fo8Sq8Ox7w=;
	b=KfDI32H6q+yFRsowB+Uy1Xae6BMfHhz1Bltp/pD4/kualatLyOfkffTT+aeGHwtZXE
	tO9JPN49/9PkN+vfyBZul8P6YNIGkHegr1uOjASOmyDunoYOixqJdJWDc+PIVWyBwQM1
	znOocfl065LolDyij6bodOeQ/ZrumEFWMOrTW3XUgHIaO/c9jtvypj8Xuic/P+5h3sCP
	WtA3W0J5zji1eSl8/+pK2OWVXJv4kIqOSnAvWi4bunlRqcuPlYNO8AUp34pru/beCLIm
	v7+egIXg6wwB6M+M8NO6cOD53vUAiH54bD+NqaFI9Pu+e3dcXAn1OXKurrLv3HunQLjR
	QbtA==
X-Gm-Message-State: APjAAAWqI992ScfIcfhh/cXc9D0cAUsVjjTG5bzNzLI43oNtMpgzKo9K
	kkvjyleQouJfRJ8yZQ/ez1vtsWSC
X-Google-Smtp-Source: APXvYqwnyA6MljiWy/SWECwMWI8cwBTtV9kLuGx4p4ud67W2ljQGnBs5viCmgHFboTW1GTM0rtYETg==
X-Received: by 2002:a81:b286:: with SMTP id q128mr37919773ywh.45.1568496524901;
	Sat, 14 Sep 2019 14:28:44 -0700 (PDT)
Received: from ?IPv6:2600:6c58:7300:1fce:6895:d1f4:e8e9:829c?
	([2600:6c58:7300:1fce:6895:d1f4:e8e9:829c])
	by smtp.gmail.com with ESMTPSA id
	x145sm7041660ywx.2.2019.09.14.14.28.43 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 14 Sep 2019 14:28:44 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: Ebook readers, again?
Date: Sat, 14 Sep 2019 16:28:43 -0500
References: <eed802d0-fc65-6baf-3f50-e22f2fd8b300@GMAIL.COM>
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <eed802d0-fc65-6baf-3f50-e22f2fd8b300@GMAIL.COM>
Message-Id: <457765D7-6925-4225-ADD9-584C147D60C2@gmail.com>
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
	(mx1.redhat.com [10.5.110.65]);
	Sat, 14 Sep 2019 21:28:45 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.65]);
	Sat, 14 Sep 2019 21:28:45 +0000 (UTC) for IP:'209.85.161.52'
	DOMAIN:'mail-yw1-f52.google.com' HELO:'mail-yw1-f52.google.com'
	FROM:'r.d.t.prater@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.096  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H3, RCVD_IN_MSPIKE_WL, SPF_HELO_NONE,
	SPF_PASS) 209.85.161.52 mail-yw1-f52.google.com 209.85.161.52
	mail-yw1-f52.google.com <r.d.t.prater@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.65
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.62]); Sat, 14 Sep 2019 21:29:00 +0000 (UTC)

V2l0aCBFbWFjcywgdGhlcmUgaXMgTm92LU1vZGUuIApodHRwczovL2dpdGh1Yi5jb20vd2FzYW1h
c2Evbm92LmVsIDxodHRwczovL2dpdGh1Yi5jb20vd2FzYW1hc2Evbm92LmVsPgpJdCB3b3JrcyBh
bWF6aW5nbHkgZm9yIG1lLCBhcyBhbiBFbWFjcyBhbmQgRW1hY3NwZWFrIHVzZXIuIFRoYXTigJlz
IGFib3V0IGFsbCBJ4oCZdmUgZm91bmQgZm9yIGFuIGFjdHVhbCwgdGV4dHVhbCwgYWNjZXNzaWJs
ZSB3YXkgdG8gcmVhZCBib29rcyBvbiBMaW51eCwgb3IgTWFjIGZvciB0aGF0IG1hdHRlciwgbG9s
LgoKPiBPbiBTZXAgMTQsIDIwMTksIGF0IDI6MDMgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IAo+IE9rYXkgc28g
d2FzIHRoZXJlIGV2ZXIgYSBjb25zZW5zdXMgb24gZWJvb2sgcmVhZGVycyBmb3IgTGludXgsIG9y
IGluIG15IGNhc2UsIHNwZWNpZmljYWxseSBVYnVudHUuIEkga25vdyBvZiBlYm9vay1zcGVha2Vy
LCBidXQgSSdkIGxpa2UgdG8gYWN0dWFsbHkgZ28gdGhyb3VnaCB0aGUgYm9vayBhbmQgcmVhZCBp
dCwgb3IgaGF2ZSB0aGUgb3B0aW9uIHRvIGhhdmUgdGhlIGJvb2sgcmVhZCBvdXQuIGxpa2UgaG93
IEJhbGFib2xrYSBkb2VzIGl0IG9uIFdpbmRvd3MuIEFueXRoaW5nIGxpa2UgdGhhdCBleGlzdD8K
PiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJs
aW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczov
L3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcg
bGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdA==
