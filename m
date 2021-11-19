Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB73456830
	for <lists+blinux-list@lfdr.de>; Fri, 19 Nov 2021 03:35:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637289333;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/B2txxbfMaDTXRLIDDkMWp6lDld0DaSWO4bn5+XiuCw=;
	b=beyQnHw2SgB3HlNNb50J1MkjSOsh+0wpj2FUe8u0iJBsBvslhIHR303FWYmxjfSwcpMlPB
	vW7hVkUA2m91Orav/e+aB5673aPmu39gyvWPEzrX9WORc0k3Qledm9hR3yWfSqR+hgfuS1
	N2A3GQkdRlf7/hwxdemAlHUuPwaYDzk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-399-bldTBG-PPBWvHNtL-gHejA-1; Thu, 18 Nov 2021 21:35:29 -0500
X-MC-Unique: bldTBG-PPBWvHNtL-gHejA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E20031023F4D;
	Fri, 19 Nov 2021 02:35:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 208D8100763D;
	Fri, 19 Nov 2021 02:35:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3AB984A702;
	Fri, 19 Nov 2021 02:35:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AJ2U9Yg021030 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Nov 2021 21:30:09 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 999F4404727A; Fri, 19 Nov 2021 02:30:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 958424047279
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 02:30:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7B5B48027FB
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 02:30:09 +0000 (UTC)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
	[209.85.160.173]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-499-_bFXXIzLMpeAjEYUME2g8w-1; Thu, 18 Nov 2021 21:30:07 -0500
X-MC-Unique: _bFXXIzLMpeAjEYUME2g8w-1
Received: by mail-qt1-f173.google.com with SMTP id p19so8177357qtw.12
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 18:30:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version
	:subject:date:message-id:references:in-reply-to:to;
	bh=NBj4WMJqJt9gGJ59r5QOuWrWddbhtMDC6A6feQdngmI=;
	b=6mx0kPJtDqB1/uEkh65hGIMOq6CrHOp8cJ8MUf4xGaH4vH5BoHFwGLWw/uL1mECRW/
	7Smd/ql7TAk9puyjI9dIqz+pKBha+j4JtEsGATSf+TMZ1HzP2uoVBBhyCbdYV+8Jr3Uz
	GMxj6TwH975r1QSJKgBzrtTfnydIp/9xsCoU3CRWrmDhDkhOHuFZp8WWCyK+XCvHJ2BJ
	ruWnRkz/ciwOhF8lCxbj0drIdlxKtBsHbs8M84TLgjp4aRiNFwGeCPgizskOB+A24sso
	Qu1FBxdCdczqNh4t1BGLT6VHF9ZxrlUf26Meo1pC5VGxcX0R9Hh26uq1CHUb1z7gzXcr
	nnSw==
X-Gm-Message-State: AOAM531xrD3WyOdJyxyNkQNhHRr58biXqc1bAQP+VPUc4KF0by5zyc4+
	KfscNA5jXbQTzmOaf+JWw5Q9oF3QPEDxzBwW
X-Google-Smtp-Source: ABdhPJwxGeg1j7gW0qq97m8tQZbGKmcW9gYx7dBDPWp9FEvsV2UR1mS89k/evYWjRzf2T8olJyLt0w==
X-Received: by 2002:ac8:7dc1:: with SMTP id c1mr2438186qte.275.1637289007010; 
	Thu, 18 Nov 2021 18:30:07 -0800 (PST)
Received: from smtpclient.apple ([2601:152:4000:330:50e6:7f05:4eeb:cb25])
	by smtp.gmail.com with ESMTPSA id
	g123sm888681qkf.108.2021.11.18.18.30.05 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 18 Nov 2021 18:30:06 -0800 (PST)
Mime-Version: 1.0 (1.0)
Subject: Re: looking for Lennix distribution?
Date: Thu, 18 Nov 2021 21:30:05 -0500
Message-Id: <1197B9A0-89EE-43AC-BD16-91BBE42E54C6@gmail.com>
References: <5e4b723f-dea3-48c7-3381-56c520c0c230@gmail.com>
In-Reply-To: <5e4b723f-dea3-48c7-3381-56c520c0c230@gmail.com>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AJ2U9Yg021030
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIHRvIHlvdSBndXlzLCBteSB3aWZpIGlzIG5vdyBjb25uZWN0ZWQuIEhvcGVmdWxseSBJ
IHdpbGwgZmluZCBhIHdheSB0byBhY3RpdmF0ZSBicmFpbGxlIHRvby4KQ2hlZXJzCklicmFoaW0K
ClNlbnQgZnJvbSBteSBpUGhvbmUKCj4gT24gTm92IDE4LCAyMDIxLCBhdCA4OjI3IFBNLCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3
cm90ZToKPiAKPiDvu79Ib2xkIGRvd24gYWx0IGFuZCBjb250cm9sIGFuZCBwcmVzcyB0YWIgdW50
aWwgeW91IGhlYXIgInRvcCBwYW5lbC4gU2hpZnQgdGFiIHBhc3QgdGhlIHRvZ2dsZSBidXR0b24s
IHlvdSBzaG91bGQgaGVhciBub3RoaW5nLCBhcyB1bmZvcnR1bmF0ZWx5IHRoZSBOZXR3b3JrTWFu
YWdlciBhcHBsZXQgZG9lc24ndCBhbm5vdW5jZSBpdHNlbGYuIEJ1dCBpZiB5b3UgcHJlc3MgdGhl
IGVudGVyIGtleSwgdGhlIG1lbnUgb2YgYXZhaWxhYmxlIHdpZmkgbmV0d29ya3Mgd2lsbCBwb3Ag
dXAsIGFuZCBpdCdzIHNtb290aCBzYWlsaW5nIGZyb20gdGhlcmUuIFRoaXMgYXBwZWFycyB0byBi
ZSBhIHByb2JsZW0gd2l0aCB0aGUgTmV0d29ya01hbmFnZXIgYXBwbGV0LCBub3QgZGlzdHJvIHNw
ZWNpZmljLgo+IH5LeWxlCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRo
YXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

