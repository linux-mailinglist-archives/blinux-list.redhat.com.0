Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 19175610565
	for <lists+blinux-list@lfdr.de>; Fri, 28 Oct 2022 00:12:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666908777;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RFM1ZVFka0glmvkoy04sbXJF7S6JYouK46uiuWSB+Gg=;
	b=HAS21Rh2yW1M1EJ/TlhcrSnsn3hO+wOY6bxpc9bJMoA0aaX56LDh0uJ2y1RRlxm6Jt5phn
	iKjRJBrVF5xgSSmMvNAYopWwAbHMqbqs8WI8tiuhVraEliRN4b+YQPghbx9yacyVoE1ASC
	n0MhFMBKHZBw2VAHz79pUkwbh7KckXY=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-314-oQK_vdOzM4O_aE-pS4wxPg-1; Thu, 27 Oct 2022 18:12:53 -0400
X-MC-Unique: oQK_vdOzM4O_aE-pS4wxPg-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2552D811E67;
	Thu, 27 Oct 2022 22:12:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6855D492B16;
	Thu, 27 Oct 2022 22:12:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DEE3A1946A7F;
	Thu, 27 Oct 2022 22:12:50 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 27 Oct 2022 18:12:35 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: void-linux
To: blinux-list@redhat.com
References: <mailman.3229.1666863125.3003.blinux-list@redhat.com>
 <mailman.3171.1666863524.3004.blinux-list@redhat.com>
 <mailman.3232.1666864286.3003.blinux-list@redhat.com>
 <mailman.3046.1666864669.3009.blinux-list@redhat.com>
 <mailman.3174.1666865573.3004.blinux-list@redhat.com>
 <mailman.3148.1666903063.3012.blinux-list@redhat.com>
 <mailman.3315.1666906969.3011.blinux-list@redhat.com>
In-Reply-To: <mailman.3315.1666906969.3011.blinux-list@redhat.com>
Message-ID: <mailman.3202.1666908770.3007.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Thus spake Jude:
> The current version of google-chrome is totally inaccessible for orca users and google messed up the package install so that package install doesn't even work correctly either.  These are some of the things the testers find out and I hope before any other users so others will know to steer clear.  Vivaldi 5.5 works no better than google-chrome but at least vivaldi installs with no errors so it installs correctly.


I just got a Brave browser upgrade today from their official repository, 
and their package installs correctly and although I still need a local 
.desktop file to run it, I have it speaking with Orca. I would think 
that any Chromium-based browser should work, with the exception of 
packaging problems, in much the same way. Still, it is unfortunately 
necessary to have a local .desktop file and run it from a menu launcher. 
Otherwise it requires running from a terminal or the run window to set 
the needed environment variables and option flags. Of course the 
environment variable can be included in a system profile, but I think at 
least the --enable-caret-browsing option is still required, which is not 
in the default .desktop file that ships with most systems. I don't mind 
sharing the local .desktop file that works for me, only the name of the 
browser executable needs to be changed on the Exec= line in order to 
make your chosen chromium-based browser talk.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

