Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [63.128.21.74])
	by mail.lfdr.de (Postfix) with ESMTP id E59DA19609A
	for <lists+blinux-list@lfdr.de>; Fri, 27 Mar 2020 22:43:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585345415;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LWR1xpvI1/UvVUdsOWz48G7rvpS3/FxWSVFTVpj0pVE=;
	b=P/aE7M7uDqYjxLnekuG1d96oeTG7ZD2Y0k6J3UBf5VZ1EGRQt/yLSRqyoMToOAydhbjZIQ
	8A2X1cGdDRkGtD6bba6bHhsNSjijlJRIikCXDCKt2y3/9ZWJ3LaOs28eRuUsCi9vINkmvV
	CMeEmiuBMp4YZKrv9lEs29j+X4CYzek=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-162-xC5hXUbzOrefJGc39whTBg-1; Fri, 27 Mar 2020 17:43:33 -0400
X-MC-Unique: xC5hXUbzOrefJGc39whTBg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BB0AA800D5B;
	Fri, 27 Mar 2020 21:43:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5D6D119C7F;
	Fri, 27 Mar 2020 21:43:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 816648A05E;
	Fri, 27 Mar 2020 21:43:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02RLhJAB023154 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 27 Mar 2020 17:43:19 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 022C912456D; Fri, 27 Mar 2020 21:43:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EF28E124542
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 21:43:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 538C3800297
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 21:43:16 +0000 (UTC)
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
	[209.85.222.195]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-304-n2-6qPdxOi2D0GAIDUnweQ-1; Fri, 27 Mar 2020 17:43:14 -0400
X-MC-Unique: n2-6qPdxOi2D0GAIDUnweQ-1
Received: by mail-qk1-f195.google.com with SMTP id x3so12498761qki.4
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 14:43:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=/jdOsrT0Ij52gKl40Xc+xljyM3fXn7E+Emd0yEuWzuY=;
	b=Px0Jdr2F4L0MZvXOgkAjuM/zcc7IY+2KER9oetgb5o/zIRxn2453QRoTjbU6YufEtp
	HNe1VGaR1r+D7oERfg9criYqeNmAo/jHUmXIqlfFCfIqlVaNX8jfHj57TC1IFhWcCLCM
	GLQCSamsVSYnm36K4vJMnSepiPrrVdt6+LigveMwLNCgFAlbIQhu0O/fQxNZIGf2Iw1j
	+gTuqqOeUBf+Hic9NUPN6k/RqYfDqAE9uAVt5g/ehNX7+OZAkFbN1lQXL6bG9pkNLf+d
	ymOr3DV3J8rB4sTvYCo7ovCftE4u87kUhzMnbJSNsFY7ul4rZv8De+FWIrQ14nq5gfTX
	/q6Q==
X-Gm-Message-State: ANhLgQ07+iccJWUYlAUUc567/syqpV+CV8hbrgBBTROfrH1XOOvjJO/Y
	rOzxtm9xNam4i0eyyTl/aCcOIUlvl//LJA1ew++a1dK2Mjk=
X-Google-Smtp-Source: ADFU+vsMhxr2xl2kFG1J5Kxfn1aXHKummXvIrFOu1tlKze/ZEtG3PLWVyRJ7F2SGHQYwlhoGjx8NFrwKF5dbuBzDe6Q=
X-Received: by 2002:a37:4648:: with SMTP id t69mr1360470qka.299.1585345393150; 
	Fri, 27 Mar 2020 14:43:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAO2sX317wcDpD8e3OWg7_5UvxMWND7urVtyok-9i9Q=PBBZCFg@mail.gmail.com>
	<20200327192532.120f151d@telaviv1.shlomifish.org>
	<AA5C9E7D46DD479397E7FC88B654B5F9@bobsh23aug09>
In-Reply-To: <AA5C9E7D46DD479397E7FC88B654B5F9@bobsh23aug09>
Date: Fri, 27 Mar 2020 14:43:01 -0700
Message-ID: <CAJ1g4g-4CYHo6BAnvuC9y-QPbQpSeBqKSfBfVSFumE3Da8OL4w@mail.gmail.com>
Subject: Re: Convert unwrapped paragraphs to hard wrapped paragraphs
	whenthere's no blank lines.
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02RLhJAB023154
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
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiBJIGRvbid0IHVuZGVyc3RhbmQgaG93IHBhcmFncmFwaHMgc3RhcnQgYW5kIGVuZCBpbiB0aGVz
ZSBmaWxlcy4gT3RoZXJ3aXNlCj4geW91Cj4gY2FuIHRyeSB1c2luZyBvbmUgb2YgdGhlIHRleHQg
cHJvY2Vzc2luZyB0b29scyBtZW50aW9uZWQgaGVyZToKPgo+ICogaHR0cHM6Ly93d3cuc2hsb21p
ZmlzaC5vcmcvb3Blbi1zb3VyY2UvcmVzb3VyY2VzL3RleHQtcHJvY2Vzc2luZy10b29scy8KPgo+
ICogaHR0cHM6Ly93d3cuY29tcHV0ZXJob3BlLmNvbS91bml4L3Vmb2xkLmh0bQo+Cj4gKiBodHRw
czovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9GbXRfKFVuaXgpCj4KPiAqIGh0dHBzOi8vZW4ud2lr
aXBlZGlhLm9yZy93aWtpL1Bhcl8oY29tbWFuZCkKPgo+IE5vdGUgdGhhdCB5b3UgbWF5IGhhdmUg
YmV0dGVyIGx1Y2sgY29udmVydGluZyBFUFVCcyAoYXNzdW1pbmcgdGhleSBsYWNrCj4gaHR0cHM6
Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvRGlnaXRhbF9yaWdodHNfbWFuYWdlbWVudCApIHRvIHBs
YWludGV4dCB1c2luZwo+IHRvb2xzIHN1Y2ggYXMgaHR0cHM6Ly9wYW5kb2Mub3JnLyAsCj4gaHR0
cHM6Ly9tZXRhY3Bhbi5vcmcvc2VhcmNoP3E9aHRtbCUzQSUzQXdpa2ljb252ZXJ0ZXImc2l6ZT0y
MCAsIGV0Yy4KCk9mIHRoYXQgbGlzdCBvZiBwcm9ncmFtcywgSSdkIGJlIGluY2xpbmVkIHRvIHVz
ZSBQYW5kb2MuIEl0IHBlcm1pdHMKeW91IHRvIHdyaXRlIGZpbHRlcnMgaW4gKGVtYmVkZGVkKSBM
dWEsIHdoaWNoIGlzIGEgcXVpY2stdG8tbGVhcm4KcHJvZ3JhbW1pbmcgbGFuZ3VhZ2UuIEZvciBl
eGFtcGxlLCB0aGlzIEx1YSBvbmUtbGluZXIgY29udmVydHMgYQpzdHJpbmcgKCJzIikgdG8gYWRk
IGEgbGluZSBicmVhayBhZnRlciBlYWNoIGV4aXN0aW5nIGxpbmUgYnJlYWs6CgpzID0gc3RyaW5n
LmdzdWIocywgIjxCUj4iLCAiPEJSPlxuPEJSPiIpCgpPbiB3cml0aW5nIFBhbmRvYyBmaWx0ZXJz
IHdpdGggTHVhLCBzZWUgPGh0dHBzOi8vcGFuZG9jLm9yZy9sdWEtZmlsdGVycy5odG1sPi4KCkJl
c3QgcmVnYXJkcywKClBhdWwKCi0tIApbTm90aWNlIG5vdCBpbmNsdWRlZCBpbiB0aGUgYWJvdmUg
b3JpZ2luYWwgbWVzc2FnZTogIFRoZSBVLlMuIE5hdGlvbmFsClNlY3VyaXR5IEFnZW5jeSBuZWl0
aGVyIGNvbmZpcm1zIG5vciBkZW5pZXMgdGhhdCBpdCBpbnRlcmNlcHRlZCB0aGlzCm1lc3NhZ2Uu
XQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICDCr1xfKOOD
hClfL8KvCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly93
d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

