Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 1048C4309F1
	for <lists+blinux-list@lfdr.de>; Sun, 17 Oct 2021 17:08:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634483338;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KVfT3OEVkL2fPv/PjdFh8t4/ELF8j0V/jB6oniLgdgA=;
	b=G6OWTPOflIq4UUeOG1aoIJQJ61LIcsF20NKgciZAvIEz+bDuXgG2upGbYrUR98ZwoRKrEc
	xZWehBciaStPTJ/+BvEPMUAbbmE7Vodic/tD14gTKKiA9HRCBKAgYgml6mI88LJBQ5M7RR
	XT7LDF9m/6mvN0yuJwaiLVVh5Nv6Vsc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-374-7sFg5g9GM8ieFLDlsfwMkQ-1; Sun, 17 Oct 2021 11:08:54 -0400
X-MC-Unique: 7sFg5g9GM8ieFLDlsfwMkQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DFB8B5074C;
	Sun, 17 Oct 2021 15:08:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7F1AB19C59;
	Sun, 17 Oct 2021 15:08:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E47684A702;
	Sun, 17 Oct 2021 15:08:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19HF8DP0026696 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 17 Oct 2021 11:08:14 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D1C7110EB2AC; Sun, 17 Oct 2021 15:08:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CD70A10EB2AB
	for <blinux-list@redhat.com>; Sun, 17 Oct 2021 15:08:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 10CC280015A
	for <blinux-list@redhat.com>; Sun, 17 Oct 2021 15:08:11 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com
	[209.85.219.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-322-5O8n7duyPd6_CPzHN0_3LQ-1; Sun, 17 Oct 2021 11:08:09 -0400
X-MC-Unique: 5O8n7duyPd6_CPzHN0_3LQ-1
Received: by mail-qv1-f44.google.com with SMTP id d20so8820272qvm.8
	for <Blinux-list@redhat.com>; Sun, 17 Oct 2021 08:08:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version:date
	:subject:message-id:to;
	bh=sTKAFEgwAEHC/hEbDjATJNtz44cnPlc2psqVEh7A5dQ=;
	b=zir9RqKIvO41NyFZqaAX0ayqCht0K8GqTn9fn0GlNQ5gi51UpVxVn47wroS8HLHBAz
	R8idcNWtXbDswy3mNZvXB8VaI46jplwig/pblp0kOCLYNbmfK8QepkfMtiDMXtpy0zHp
	k28m2LIsuqLcS8P8uCV/E1CUWSfzKmh3lYKVKo3WflWKENrBNwuubFnkXWJJK7qzcVkE
	YSKOh1t3SBVNEimeIgFRT2Ut2u9BpcG3vytJqu9NGz0Nb1Ado3dGy6sTBxbNEnRqOdY3
	jRlvplzgFTsZ82HNs8p6RtDZ+ekCySgUxwhRcTIOdICWgMfJiTsed9B90o6Dw0GQp0GA
	tnkQ==
X-Gm-Message-State: AOAM531898/cEHFYJdsqaGDf9ZLDW6fs6lds+OKXu23jG8RbRwvF3iek
	qjblDqkUOoYWLcODmA6X3/VDXT2MjQo=
X-Google-Smtp-Source: ABdhPJwJE+CZUpIlL3U2Myt2sp6naMiIL3XEYdXFi1yXkT19hfEyQErh/kFFl+7HEUkbnyBsgG6FJQ==
X-Received: by 2002:a0c:b54a:: with SMTP id w10mr21279141qvd.15.1634483288916; 
	Sun, 17 Oct 2021 08:08:08 -0700 (PDT)
Received: from smtpclient.apple ([2603:9002:304:d847:b599:7fcd:29a3:7899])
	by smtp.gmail.com with ESMTPSA id
	e16sm4896089qkl.108.2021.10.17.08.08.08 for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 17 Oct 2021 08:08:08 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Sun, 17 Oct 2021 10:08:08 -0500
Subject: PinePhone Pro $399 Linux Smartphone Launches
Message-Id: <C0B50FAB-8C6E-4232-A846-1663CEAAE93F@gmail.com>
To: Blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19HF8DP0026696
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

T3BlbiBTbWFydE5ld3MgYW5kIHJlYWQgIlBpbmVQaG9uZSBQcm8gJDM5OSBMaW51eCBTbWFydHBo
b25lIExhdW5jaGVzIiBoZXJlOiBodHRwczovL3NoYXJlLnNtYXJ0bmV3cy5jb20vZEc0YTMKClRv
IHJlYWQgaXQgb24gdGhlIHdlYiwgdGFwIGhlcmU6IGh0dHBzOi8vc2hhcmUuc21hcnRuZXdzLmNv
bS82S3pVNAoK4oCU4oCU4oCUClNtYXJ0TmV3cwpodHRwczovL3d3dy5zbWFydG5ld3MuY29tCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

