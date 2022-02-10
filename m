Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C034F4B0440
	for <lists+blinux-list@lfdr.de>; Thu, 10 Feb 2022 05:10:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644466207;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7vozIz2ZfGYtQe9zxaC71AMJv60/XM0OhM0nwGMxZLc=;
	b=fjZPFUn1/7mSvJRa+njk+D+wFc/sJVggi4V927b8VLG5+sJn82L7lUSFAkIbCIuBUt38mT
	gPIj2rput1a/l7N0i4F3rzJhpIrNfKfS8GMV4vq1/UvmNeL96BCK7qcL8+Fp0qjSxM2Vdw
	QSQlI3yeLKcP5eHCPqgAehEX988TMrA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-411-xAOlxb3INOOgYiE19aTt9g-1; Wed, 09 Feb 2022 23:10:06 -0500
X-MC-Unique: xAOlxb3INOOgYiE19aTt9g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4C34D1091DA2;
	Thu, 10 Feb 2022 04:10:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EA95846975;
	Thu, 10 Feb 2022 04:10:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 280701809CB9;
	Thu, 10 Feb 2022 04:10:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21A48InZ014548 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 23:08:18 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 43E71778A; Thu, 10 Feb 2022 04:08:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3CB7479DC
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 04:08:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 25F1C185A79C
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 04:08:14 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
	[209.85.222.172]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-564-6s9Y9_85NNSpPgrDtGidqw-1; Wed, 09 Feb 2022 23:08:11 -0500
X-MC-Unique: 6s9Y9_85NNSpPgrDtGidqw-1
Received: by mail-qk1-f172.google.com with SMTP id 200so3675646qki.2
	for <blinux-list@redhat.com>; Wed, 09 Feb 2022 20:08:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=F9a5IhvhrgnR+qv6cgO1jqBNP8w/HSELOadQNt1Kahk=;
	b=HrgfsFMIlU3pOGmSY/xWf3rZVRUZJS60BNfywzydn+1L0s0T/XXI+sm/exzra9fyv6
	cD2yI6xsAOldUHc5xOcVkP5u2FGfoFzQPitHmUMCsNvoSYawStOtzz8G3UzkaoSQtXAK
	jK2mYXTyyZkM1g1kO46Ex6FB/1IHB+EXdS12dM3XwMphFDdxvKUbNDdG4E+48lCzlltM
	PwNgQ9RRDiLIvZHMF29SbsmLqPJwdyEF0gW6esBNV2b/gR7mLBzENF7wUse7F87/2c/f
	HjALeVNjps0ThVFgxiOAa0TZAXW0mR4kru4q7u+XKXCH22VBM6rYbIv/6ZciwRAdxnx1
	351A==
X-Gm-Message-State: AOAM531NayjdLQthdq8X7IVqQxmF8oT7m+VuRjkxJnrgrWg+u+/pbwpX
	RrCy8Tr/bLR5Cq0txTzbUqY6F9+k50zzjMcdHREY0ZD/
X-Google-Smtp-Source: ABdhPJz6xnliBkVLCsZpNawYulvBD6EnQJEe58Fmkd3rYf5pH7JyfgF5ftcd7TScwmqDiI6/j9D0IF09NoLJgKIrIVs=
X-Received: by 2002:a05:620a:31a7:: with SMTP id
	bi39mr2850779qkb.124.1644466091358; 
	Wed, 09 Feb 2022 20:08:11 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6214:518d:0:0:0:0 with HTTP; Wed, 9 Feb 2022 20:08:10
	-0800 (PST)
In-Reply-To: <20220209164324.18d9bafa@bigbox.attlocal.net>
References: <20220209.123818.520.13@192.168.1.100>
	<20220209090549.4659750f@bigbox.attlocal.net>
	<CAO2sX33BR+rnxEVtDOnAzyP=bQ0cB1bkLKpkVKGSmZdYJiSiog@mail.gmail.com>
	<20220209115112.077dcede@bigbox.attlocal.net>
	<CAO2sX309esqHKcpfCUtFQ4njcDtiXVHVCddUxApE8PjNMg2gGg@mail.gmail.com>
	<20220209134336.72a59209@bigbox.attlocal.net>
	<ddfd6124-1054-6f85-0b18-3a4da344a557@slint.fr>
	<CAO2sX33Be721PG40oKJY6C9BuZcDJcEpZAAU22L+tTgQnftfnQ@mail.gmail.com>
	<20220209164324.18d9bafa@bigbox.attlocal.net>
Date: Thu, 10 Feb 2022 04:08:10 +0000
Message-ID: <CAO2sX321xVNBtzr4ro_qeubmgbi6DEDyMEo7Bd+4uJK+s6e5rQ@mail.gmail.com>
Subject: Re: shell brace expansion (was "regex help")
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

So, the syntax is

start value double dot end value double dot step increment

and if the third value is omitted, it defaults to steps of 1.

This is what I like about Linux, even after a decade-and-a-half of
using it daily, I still occasionally learn new tricks... and it's
because there's so much functionality hidden among the dozens, if not
hundreds of little utilities found on just about every Linux system
and not because some corporate executive insists on overhauling the UI
with every major release so the marketing department has something to
show off.

mkdir {0..9}

certainly beats

mkdir 0 1 2 3 4 5 6 7 8 9

for the next time I find myself with a bunch of files with nondescript
filenames to organize and I want to divide them into smaller sets.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

