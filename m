Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E0B4AB289
	for <lists+blinux-list@lfdr.de>; Sun,  6 Feb 2022 23:08:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644185312;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=j4PNtn3QhPQnVUNTXW3W1C5D8kJfC/Iwt593Tu00ZmM=;
	b=iFlaQRB1LRDeWzJR7nVNHAnLFHMVofZkPIF/adjPhUJRqroY5P9MbJ12yyuYafrcWg/obO
	VMNTRH7YgAknGEadS8l8TVn6TwioC65+5KpdQeGDsmXhmdYZQgUi/X8TKbgBRUug4g6IQr
	eYS7e8QPyizvj6nIFGPc27CFhdyoHu8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-220-iU-5a2UmNECt9xfqQrm-JA-1; Sun, 06 Feb 2022 17:08:28 -0500
X-MC-Unique: iU-5a2UmNECt9xfqQrm-JA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 178CD10247A6;
	Sun,  6 Feb 2022 22:08:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 97B63E738;
	Sun,  6 Feb 2022 22:08:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BB6064BB7C;
	Sun,  6 Feb 2022 22:08:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 216M57XS008617 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 6 Feb 2022 17:05:07 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 27691C1D3AE; Sun,  6 Feb 2022 22:05:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 23AC1C1D3AD
	for <blinux-list@redhat.com>; Sun,  6 Feb 2022 22:05:07 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0824C811E76
	for <blinux-list@redhat.com>; Sun,  6 Feb 2022 22:05:07 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-627-nUPLDVQjOuW9dv5DunIvfQ-1; Sun, 06 Feb 2022 17:05:05 -0500
X-MC-Unique: nUPLDVQjOuW9dv5DunIvfQ-1
Received: by mail-qt1-f171.google.com with SMTP id x5so10520323qtw.10
	for <blinux-list@redhat.com>; Sun, 06 Feb 2022 14:05:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version
	:subject:message-id:references:in-reply-to:to:date;
	bh=BQ3qE8RbczqjCfxzkNgp09H0Bz9Qp10fobYNwbEK/YY=;
	b=drO1uE36FPL8TMANz8OHmc5q0ptgNDCSv9nC0S4hAy66nHnYk8nSjKvdailLTk9v/1
	XDhF28AeByBi+pzc9hPQBqG4TUOobY9/kSgpm6HY2N6I8rwceHWDxei4OirNLyN+e6HM
	hGCuraqT6lFt6+uy88071VWtGMp8ofI1oas6HLCPTFNGV5tFI3j7zTfG/O/XyeuSYLQX
	9EzZcPwY2uvv1BiyAO8kLDD9qQkTujLTrF3ckZEB7sg0Zsh/2IDiqq3YMbZ61S8mmaqQ
	OTPaMtYwJGfOUlqd2LdG9heX1g1nfsnmHtYufZhW0NRA+mw4fxyclElFteQBMYFTLO3g
	lpTw==
X-Gm-Message-State: AOAM530nRlVTAPMN++NhywVy5Bj7zwjXwf+yFbw8sFUsud/P7mM3wE57
	njyMaJFR89mA6+BnhAWxTB4TzLULf5lvvA==
X-Google-Smtp-Source: ABdhPJw4lhz358yF0VZ3qPZhUlIRZdZM+eBQ56d31r60P55C1nHooVYenv4SdlpLHRHptz5wvE3H1g==
X-Received: by 2002:a05:622a:1391:: with SMTP id
	o17mr6180258qtk.249.1644185105054; 
	Sun, 06 Feb 2022 14:05:05 -0800 (PST)
Received: from smtpclient.apple ([2603:9002:304:d847:b4fc:930c:b230:ee00])
	by smtp.gmail.com with ESMTPSA id
	bp37sm4300552qkb.135.2022.02.06.14.05.04
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 06 Feb 2022 14:05:04 -0800 (PST)
Mime-Version: 1.0 (1.0)
Subject: Re: Does anyone know how to switch a Humanware display to contracted
	braille on Linux?
Message-Id: <3DBC0B6E-596B-49FC-B8A3-8E0C2D41FD57@gmail.com>
References: <D1B9D67B-94D0-4A07-9CF8-F86A45643E5E@yahoo.com>
In-Reply-To: <D1B9D67B-94D0-4A07-9CF8-F86A45643E5E@yahoo.com>
To: blinux-list@redhat.com
Date: Sun, 6 Feb 2022 16:05:04 -0600
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 216M57XS008617
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

VHJ5IGNvcmQtZywgYnV0IEkgZG9uJ3QgdGhpbmsgaXQgd2lsbCB3b3JrLiBXb3J0aCBhIHNob3Qu
CgpPbiBGZWIgNiwgMjAyMiwgYXQgMTE6NDMgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgoK77u/SGkgZ3V5cywKU3Vi
amVjdCBwcmV0dHkgbXVjaCBzYXlzIGl0IGFsbC4gSSB3YXMgIHdvbmRlcmluZyBpZiBhbnlvbmUg
a25vd3MgaG93IHRvIHN3aXRjaCBhICBIdW1hbndhcmUgQnJhaWxsaWFudCBiIDgwIHRvIGNvbnRy
YWN0ZWQgIGJyYWlsbGUgb24gdGhlIExpbnV4IHRlcm1pbmFsPyBJIGtub3cgd2l0aCB0aGUgIGNv
bW1hbmQga2V5cyB5b3UgY2FuIGRvIGEgbGV0dGVyIEcgd2hpY2ggIHdpbGwgdG9nZ2xlIGl0IGlu
dG8gZ3JhZGUgMi4gSeKAmW0ganVzdCBub3Qgc3VyZSAgaG93IHRvIGtlZXAgaXQgc2V0IHRoYXQg
d2F5LgpBbnkgaGVscCB3b3VsZCBiZSBncmVhdGx5IGFwcHJlY2lhdGVkLgpUaGFuayB5b3UsCgpB
c2hsZXkgQnJlZ2VyCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0
IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

