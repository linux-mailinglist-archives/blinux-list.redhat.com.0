Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 89CD51ED9A4
	for <lists+blinux-list@lfdr.de>; Thu,  4 Jun 2020 01:50:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1591228244;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3FVu/Oc0rsbQ6Ti0QGz3etHl4u6BsmcOgKSpbzG5Q60=;
	b=Ba/W/HgcvAzTNkdPBiGTOlKKpY34n3wy1lZiBJwvLe84KHbj9S9Se+0xG4PlCAIW9GLkAL
	/thc30EeG1YaZdyuphhVmansnogl9iFRXdrCBn9hlw2pN747WkoQ7Y6fVDiUDFFTgLVP1+
	uyRWdll2cImXSqGMnd32hh/3apWRL+A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-503-dTD971pNOzGOGJWhyuHhTQ-1; Wed, 03 Jun 2020 19:50:34 -0400
X-MC-Unique: dTD971pNOzGOGJWhyuHhTQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2B708107ACCD;
	Wed,  3 Jun 2020 23:50:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5F8B860C81;
	Wed,  3 Jun 2020 23:50:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 26BE2180954D;
	Wed,  3 Jun 2020 23:50:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 053NoICO006348 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 3 Jun 2020 19:50:18 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 228B72026D67; Wed,  3 Jun 2020 23:50:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0F3E72026D5D
	for <blinux-list@redhat.com>; Wed,  3 Jun 2020 23:50:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D9D2B811E77
	for <blinux-list@redhat.com>; Wed,  3 Jun 2020 23:50:14 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-282-astdxqjgOhmzcpiUJd7xZA-1; Wed, 03 Jun 2020 19:50:12 -0400
X-MC-Unique: astdxqjgOhmzcpiUJd7xZA-1
Received: by mail-wm1-f48.google.com with SMTP id q25so3817879wmj.0
	for <blinux-list@redhat.com>; Wed, 03 Jun 2020 16:50:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=wn3wjgO+W4oqYCAOqKkurIAdMbw6eLXpj0tJVAEQ/eY=;
	b=ZRIGmoP9fDe1d1SIGQLiu/w89gTf3+sy2buaqlZtNg/iR8YMpY5wYfQD8N1y9mJsDi
	dLuwm80Tzjg9Q00evr44nNpxsJ9JaC0VAvLgY3R971F3cUBqC6x9PGS+ZfJXrzEKzk9s
	4eILUS5f7sbqPOmuKwAq1Z/Ds40oRmI3uhY25nV5TQIMmd35YY4OAYncwWuv+ydetM0O
	sLH9f2BIcBTUExFVbAANV4Xm5UMx/Yy5v+Q2ktwfRV9TWFJ+UW3AR0XB3fefl6g+xaCR
	bvtnF2uTjxExFzUHtSB3EoijMZnG5+zG5Eoad9OYTfxCcjj2nrtPssO7m8F/WcWDuUnU
	H9xw==
X-Gm-Message-State: AOAM531nu+RLLMYlD5oZtqh5bCe3vJc5hMWZiIysEiK91OsXQM9Z4Cis
	mQv81rf9tjbFAzNRGqMQOBjsa9A1iB7ac0Qz8LBeCA==
X-Google-Smtp-Source: ABdhPJzbgRlhOvAJ+UA2Ni4EVXazVeBf1fqXnoUCZEeLTulfE6BP9YFelPdyG8RMiNb8Lchfs1YbzRCu7RkA6xCYbF8=
X-Received: by 2002:a7b:c1c5:: with SMTP id a5mr1309020wmj.35.1591228210418;
	Wed, 03 Jun 2020 16:50:10 -0700 (PDT)
MIME-Version: 1.0
References: <19fe1f20-9bc7-9fc7-6702-a34021279d54@gmail.com>
	<69477010-C5C0-4312-A525-6144A297912F@linux-a11y.org>
In-Reply-To: <69477010-C5C0-4312-A525-6144A297912F@linux-a11y.org>
Date: Wed, 3 Jun 2020 19:49:59 -0400
Message-ID: <CAJKfDDEBWngHLmN-o2_OzsrNgqi4KHuOss_tBZr6FfwRovmhQA@mail.gmail.com>
Subject: Re: Tiling WM with Orca, anyone?
To: blinux-list <blinux-list@redhat.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VHJ5IE1hdGUgd2l0aCBDb21waXogYnkgdXNpbmcgTWF0ZS10d2VhaywgdWJ1bnR1IG1hdGUgMjAu
MDQgbHRzIHNob3VsZCBkbwp3ZWxsLgoKTGUgbWVyLiAzIGp1aW4gMjAyMCAxODowMiwgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8CmJsaW51eC1saXN0QHJlZGhhdC5jb20+IGEg
w6ljcml0IDoKCj4gSG93ZHksCj4KPiBCYXNpY2FsbHkgeW91IGNhbiB1c2UgYW55IGxpZ2h0d2Vp
Z2h0IFdNLiBPbmx5IGlzc3VlIG1pZ2h0IGJlIHRoZQo+IGFwcGxpY2F0aW9uIHN3aXRjaGVyLCB3
aGF0IHNob3VsZCBiZSBhY2Nlc3NpYmxlIGFzIHdlbGwuCj4KPiBBRkFJUiBzdG9ybSBvbmNlIHdy
b3RlIGFuIGFjY2Vzc2libGUgd2luZG93IHN3aXRjaGVyIGZvciBSYXRwaXNvbiBXTQo+Cj4gaHR0
cHM6Ly9lbi5tLndpa2lwZWRpYS5vcmcvd2lraS9SYXRwb2lzb24KPgo+IFNlZSBoZXJlCj4KPiBo
dHRwczovL2dpdGh1Yi5jb20vc3Rvcm1kcmFnb24yOTc2L3N0cnljaG5pbmUKPgo+IENoZWVycyBj
aHJ5cwo+Cj4KPiA+IEFtIDAzLjA2LjIwMjAgdW0gMjM6Mjggc2NocmllYiBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDwKPiBibGludXgtbGlzdEByZWRoYXQuY29tPjoKPiA+Cj4g
PiDvu79IaSBldmVyeW9uZSwKPiA+Cj4gPiBJIG5lZWQgdG8gaW5zdGFsbCBhIGRpc3RybyBvbiBh
IG1pbmltYWxpc3QgbWFjaGluZSBmb3IgYSBibGluZCBMaW51eAo+IG5ld2JpZSwgYnV0IGluIHRl
c3RpbmcgZXZlbiBNYXRlIGlzIGhhdmluZyBpc3N1ZXMuIE9rLCBpdCdzIGEgcGllY2Ugb2YKPiBq
dW5rLCBidXQgYWxsIHRoZSBndXkncyBnb3QuCj4gPgo+ID4gSSB3YXMgdGhpbmtpbmcgc29tZXRo
aW5nIGxpa2UgaTMsIGJ1dCBteSByZXNlYXJjaCBzaG93cyBpc3N1ZXMuIFdoYXQKPiB3b3VsZCB5
b3Ugc3VnZ2VzdD8gVGhlIG1hY2hpbmUgaXMgcHJvYmFibHkgb2xkIGVub3VnaCBzbyBJIGNvdWxk
IGhhdmUKPiBib3VnaHQgaXQgc2Vjb25kIGhhbmQgd2hlbiBJIGZpbmlzaGVkIGhpZ2ggc2Nob29s
IDE2IHllYXJzIGFnby4KPiA+Cj4gPiAtLQo+ID4gV2FybSByZWdhcmRzL0dyb2V0bmlzL0hlcnps
aWNoZSBHcsO8w59lLAo+ID4KPiA+IEJyYW5kdCBTdGVlbmthbXAKPiA+Cj4gPiBTZW50IHVzaW5n
IFRodW5kZXJiaXJkIGZyb20gVWJ1bnR1IE1hdGUgMjAuMDQKPiA+Cj4gPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4gPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPiBodHRwczovL3d3dy5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJs
aW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20K
aHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

