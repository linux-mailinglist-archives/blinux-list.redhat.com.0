Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 624743D2198
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 12:01:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626948068;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=kCOmE2uh024AbrnYkXpKGgDDYghuEXXGZYrQ31gCKqA=;
	b=ImTRwGLooFjSRuSkeYVPvGRIC2yWwzz5MWEDbdJNYExs5+jRXvQaSKf60fIoy25wNYQcoE
	p6C5oWS6iWTzaWOulMbj/t7pp9OW9YcGK+gjVWiNnjYqKHfkl3Ao21IVXmvuErZtLPwVCr
	JvXtEXaRFpSsF7ubcto4sV3y+zth9mY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-340-3G_tat3eNPimaqF200mHGA-1; Thu, 22 Jul 2021 06:01:06 -0400
X-MC-Unique: 3G_tat3eNPimaqF200mHGA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4E94C804317;
	Thu, 22 Jul 2021 10:00:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5002D4EC26;
	Thu, 22 Jul 2021 10:00:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CC95B4BB7C;
	Thu, 22 Jul 2021 10:00:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MA0jWc022213 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 06:00:46 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C2D4E10CD77B; Thu, 22 Jul 2021 10:00:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BEB9610CD859
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 10:00:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 579FF80B724
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 10:00:43 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
	[209.85.222.173]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-487-7i4jDptYOE6Yhcrrk-3mLg-1; Thu, 22 Jul 2021 06:00:40 -0400
X-MC-Unique: 7i4jDptYOE6Yhcrrk-3mLg-1
Received: by mail-qk1-f173.google.com with SMTP id 23so4907135qke.0
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 03:00:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=7Tdx3+7YvkmmqyNd253uTwnbROFDGYCfjRbEYB8wOoU=;
	b=LEOwgeVmPWTRSXC11fO12x+o16j09bPqeAAMApKil+nEsskjRnQdZliVqFU4rIofdD
	UmxR4XugQ30SqTUMQKslmi2SDHIaEnM2rFsWgP48fq15sKKSr6MYz65bTIYPzsD/kE4s
	zUaUFkgokGDTp7S8FGfF8xi+LFyiPGUjtA34WT2ak/1z0gCsblEJZIqBy75yO58h0uho
	YxHoT+BYgI3nDM9O9rU/xlSV4IEqa/nZMdVpQTYt/GbE8nLzpl+d0Xgw4HwMROmsBNwC
	qFCwJ7ySWSFMJI+BxfZglzrzH9yymXXAauMLFPaON9rKR78kl3VSHKwNwdVOVVlfGQoi
	KreA==
X-Gm-Message-State: AOAM530WtlFcPJimk+UGQ2TqKi3Zl82EfT0Z6YN5g24a1lgB+XRdIOVI
	ye9Zql6EC0rZ1g4oMUJDWDpNObl6CDP3/UltIJ3mEO3l
X-Google-Smtp-Source: ABdhPJykhh4QvP/vT8lBIaDWPWJLBsriehjyPstIYCLgQZiUmr/OhN6GZZ6DRRSDcbOOBPoHRawBidav+dZY95AufwU=
X-Received: by 2002:a05:620a:d42:: with SMTP id
	o2mr38755379qkl.233.1626948039878; 
	Thu, 22 Jul 2021 03:00:39 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 22 Jul 2021 12:00:23 +0000
Message-ID: <CAD_4ddRiqb1QK=SuovMrM8OBGNJKuP6m=Wd+rqC6ykAY-ymRMg@mail.gmail.com>
Subject: A question about running emacspeak on Arch
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello everyone,

Last night I installed emacspeak on Arch Linux from the aur, version 54.0
with yay, but I am having a problem: whenever i type
emacspeak
in a terminal, it tells me to choose a synthesizer, but i can't choose
either espeak, or espeak-ng, because no matter what i do, arrows, tab,
emacspeak doesn't play a sound.
After I press tab, in fact, an emacs panel opens, and nothing speaks inside
it except orca.
Does Anyone have any ideas on how to fix it?
I'd like to try and get into emacspeak, so to see what it can and can't do.
Best regards.
Francisco.
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

