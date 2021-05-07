Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 420C83765B1
	for <lists+blinux-list@lfdr.de>; Fri,  7 May 2021 15:00:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1620392431;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=F8DBJKTNZF8jIRkt7zrcb7dH54R/PLqn93eTEprWjK8=;
	b=hd02ELGL0jfVGrKUIA2Vg5LjVO+vMqRkW5ojRSqZGUDcMbBrRyRF18Ls+vMoNdZbexcrYg
	++rLu8X8/mPQTkRZM7nUWF+dlUwyX8fsTIx/CabBy6ItaoFHVdQkIs7qgliRp+6viJsokl
	D01ji5K0EEI7bD8jWkEn/Urc2EUIVYI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-142-q9dKZ6RfNMe1IAZmUmmQIQ-1; Fri, 07 May 2021 09:00:28 -0400
X-MC-Unique: q9dKZ6RfNMe1IAZmUmmQIQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 926738189C6;
	Fri,  7 May 2021 13:00:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 137AF1A870;
	Fri,  7 May 2021 13:00:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 60BD45534C;
	Fri,  7 May 2021 13:00:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 147CxVEq014642 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 7 May 2021 08:59:31 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2987821EE561; Fri,  7 May 2021 12:59:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2530D21EE560
	for <blinux-list@redhat.com>; Fri,  7 May 2021 12:59:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F1CAA10665A0
	for <blinux-list@redhat.com>; Fri,  7 May 2021 12:59:25 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com
	[209.85.219.47]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-353-gK7B0DbzPDud4Uw0kn1hvg-1; Fri, 07 May 2021 08:59:23 -0400
X-MC-Unique: gK7B0DbzPDud4Uw0kn1hvg-1
Received: by mail-qv1-f47.google.com with SMTP id dl3so4727243qvb.3
	for <blinux-list@redhat.com>; Fri, 07 May 2021 05:59:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version
	:subject:date:message-id:references:in-reply-to:to;
	bh=v9ah20fePI15rsEPqcLf6g6KlLfBCMzkaJ8xMwzyaDs=;
	b=c0Sz74+VbQcdicqPGC45/EYxqoJnvY+VoZcfPw+g00f27a42DO85CiEIO4+8rPj9TO
	UAMKzQYcuyJSpuUYOs0wZSF4Gg1i26+SNp3CPHKESXtggtJQqLnzf76qhZlbPRW4K8QY
	5LQaJo4h2mu6kdFsdr8bMS7JBIoTmcL8sNMRHvBFxROs9K3Flrr9cofy03SECuO9TLxJ
	scwJHkkOXR05lGTez62WrdBKhEjIUMIAQRdhAacCYlsaR0Nw2HLUL0VgD6NfXh1RTahU
	mVzyvnviSE/bCjGuKMvhcbgzxa/bVxeJDshrskhUvlb8haVcIrcTbbxG76PG22AW92T2
	H8lQ==
X-Gm-Message-State: AOAM530ZpZEv/FgUujt41iEZ2U0HoeHlr1BGDUFDiKngek6U60/HPaHi
	SvsjvLTM3v7882KEa/aql2Pqar3iLwzBAEX3
X-Google-Smtp-Source: ABdhPJwZwWokY6xqJGMst0X0BvUzXgHWicA3ma0FchntswpBC7GCHKYB+QAdDahYIp6jBJYt8vLDRQ==
X-Received: by 2002:a05:6214:9c7:: with SMTP id
	dp7mr9683894qvb.57.1620392362498; 
	Fri, 07 May 2021 05:59:22 -0700 (PDT)
Received: from smtpclient.apple ([2601:192:4c80:3c00:10b9:3e78:f8e9:de01])
	by smtp.gmail.com with ESMTPSA id
	s190sm4556471qkc.40.2021.05.07.05.59.21 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 07 May 2021 05:59:21 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Subject: Re: No Talking GDM in Fedora 34 (workstation)
Date: Fri, 7 May 2021 08:59:21 -0400
Message-Id: <9E05FB2C-BEC1-4CF8-BF2F-D35B6632E655@gmail.com>
References: <6e26ee71-f2b1-9b33-43a3-4942dafd3786@gmail.com>
In-Reply-To: <6e26ee71-f2b1-9b33-43a3-4942dafd3786@gmail.com>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 147CxVEq014642
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIGZvciBhbnN3ZXJpbmchICBXb3VsZCBJIGRpc2FibGUgU0VMaW51eCB3aXRoIHN5c3Rl
bWN0bD8gIAoKQ2hlZXJzLAoKRGF2ZSBIdW50CgoKU2VudCBmcm9tIG15IGlQaG9uZQoKPiBPbiBN
YXkgNywgMjAyMSwgYXQgMToyMiBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gCj4g77u/SGVsbG8gdGhlcmUsCj4g
Cj4gCj4gRm9yIGl0IHRvIHdvcmsgZm9yIG1lLCBJIGhhZCB0byBkaXNhYmxlIHNlbGludXgKPiAK
PiBCZXN0IHJlZ2FyZHMuCj4gCj4gRnJhbmNpc2NvLgo+IAo+PiBPbiA1LzYvMjEgNjoxNCBQTSwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4gT2gsIGFuZCBJIGhh
ZCB0byB1c2UgYW4gb2NyIHRvb2wsIG9uIG15IHNtYXJ0IHBob25lLCB0byBnZXQgdGhyb3VnaCB0
aGUKPj4gaW5pdGlhbCB1c2VyIHNldHVwLCB0b28sIGJ1dCwgaG93IGRvIEkgZ2V0IHRoZSBsb2dp
biBzY3JlZW4gdGFsa2luZz8gIFRoZXJlCj4+IGFwcGVhcnMgdG8gYmUgc291bmQ7IHRoZSB2b2x1
bWUgcG9wcyBwbGF5LiAgTWF5YmUgdGhlICdhbHQrc3VwZXIrcycKPj4gc2hvcnRjdXQgaXNuJ3Qg
Ym91bmQgb24gbG9naW4gc2NyZWVuPyAgTWF5YmUgc29tZSBnc2V0dGluZ3MgdGhpbmcgaXNuJ3QK
Pj4gc2V0PyAgV2hhdGV2ZXIgdGhlIGNhc2UsIEkgY2Fubm90IGdldCBhIHRhbGtpbmcgbG9naW4g
c2NyZWVuLiBTaW5jZSBJJ20gdGhlCj4+IG9ubHkgdXNlciwgaXQncyBub3QgYSBodWdlIHRoaW5n
LCBidXQsIHRoaXMgc2hvdWxkIHdvcmssIGFzIGl0IGhhcyBkb25lLCBpbgo+PiBwcmlvciB2ZXJz
aW9ucy4KPj4gCj4+IAo+PiBUaGFua3MsCj4+IAo+PiAKPj4gRGF2ZSAgSHVudAo+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+IAo+IAo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiAKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0

