Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 61EEA6F0C10
	for <lists+blinux-list@lfdr.de>; Thu, 27 Apr 2023 20:39:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682620753;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pILSGNbtloffixl+jUIFa6pZYSW/LvpcpFXvvv1uduk=;
	b=EHsK08nNCspyHrsPaT2RqujOI2onp3/Ar2NVNxg2buPT1fetcJ4v08R1fE+N26ZvqqzNfp
	g54wAJiP5azgcklSr8XDeCU1rjx9g0bGRnxBTOGanZHgOh6fUMXuxDXxdqamPsHIK4pnx5
	WBbJZ8+HfwN1nt1U3xVI70aZ+cKrqwE=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-390-it-z2acwOvqPlraE4BX0mg-1; Thu, 27 Apr 2023 14:39:09 -0400
X-MC-Unique: it-z2acwOvqPlraE4BX0mg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3493610504A6;
	Thu, 27 Apr 2023 18:39:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3A8C614171B8;
	Thu, 27 Apr 2023 18:39:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8DD9E1946A52;
	Thu, 27 Apr 2023 18:39:03 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.500.231\))
Subject: Re: Two Arch beginner questions
Date: Thu, 27 Apr 2023 14:38:46 -0400
References: <mailman.1813.1682596723.2351819.blinux-list@redhat.com>
To: Blind Linux <blinux-list@redhat.com>
In-Reply-To: <mailman.1813.1682596723.2351819.blinux-list@redhat.com>
Message-ID: <mailman.1966.1682620743.2351822.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

Espeakup is in the arch repo and in fact is part of the arch repos.  Not sure if Fenrir is in the official repo, but you can get it from the AAUR.  Also, I reco
Mend using GDM for a display manager if you plan on using one.  Otherwise you can just setup starts and launch a session that way if you want.

Matthew


> mmOn Apr 27, 2023, at 7:58 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Hi,
> 
> today I installed Arch Linux for the first time. Now I have fully setup the console and now, it is time for graphical interface. I will use Mate desktop. I know how to install it, but I have a question related to display manager. Can you recommend me some display manager for Mate desktop, which is packaged for Arch and configured for a11Y (start Orca in the manager)
> 
> And my second question is related to console screen readers. Espeakup and Fenrir are included. Which of these is better for using console apps, such as email clients, web h browsers etc? Is espeakup developed or deprecated?
> 
> Thanks,
> 
> Pavel
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

