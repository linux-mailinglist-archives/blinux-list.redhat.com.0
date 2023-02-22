Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1189369FD29
	for <lists+blinux-list@lfdr.de>; Wed, 22 Feb 2023 21:46:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1677098809;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1fZW3SFj4YbNYy6pBqT3EvWaja3pIMkSgBRM5KdE15Q=;
	b=E2aiNIMvY7EqYKO4FR3SjajR5Po7+GoHh5e38pHNJURFACvyXakGwn8+3q0/4YdFL8DR6D
	9NLAUpAjaD5WM+A6hzuloz+JC2HMeYj7Erg4LbwaDyysWRjAP9cHHq8fOAl4c0NL9qXSK2
	Zkqqh4Czy1SIU9H0YBhXVkOL6Z6T5Ik=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-76-noNDmngIOqCCrj_668Fq6g-1; Wed, 22 Feb 2023 15:46:46 -0500
X-MC-Unique: noNDmngIOqCCrj_668Fq6g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6B22E3C0F196;
	Wed, 22 Feb 2023 20:46:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 452C32166B2A;
	Wed, 22 Feb 2023 20:46:39 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id EC29119465BC;
	Wed, 22 Feb 2023 20:46:38 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.2\))
Subject: Re: What a find! DECTalk!
Date: Wed, 22 Feb 2023 15:38:10 -0500
References: <mailman.886.1677038394.686542.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.886.1677038394.686542.blinux-list@redhat.com>
Message-ID: <mailman.1848.1677098798.686540.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,
I copied these instructions from the website.
Is this it?
Just run these commands and DecTalk will appear in speech dispatcher?
Thanks for any help.
apt-get install build-essential libasound2-dev libpulse-dev libgtk2.0-dev unzip git


# Run all these commands in the /src directory...
# Generates configure files
autoreconf -si

# Executes configure files
./configure

# Builds DECtalk with ALL cores (remove -j for single core)
make -j



> On Feb 21, 2023, at 10:59 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> I'm happy to be in the fediverse right now. Looking through my timeline, I just found a link to a Github repository that has DECTalk source code, apparently released by some of the original DECTalk developers.
> 
> https://github.com/dectalk/dectalk
> 
> The LICENSE file still has scary words like "proprietary" and "confidential" and "all rights reserved," but the source builds and works. I have it working in speech-dispatcher with Orca as I write this.
> 
> 
> Note that this is the DECTalk software version 4.x, the one that sounds just like the DECTalk Express from the 1990's, so anyone who needs hardware speech should feel right at home with this. No, this is not the 5.x DECTalk that really sounds like crap. Have fun and enjoy, and I do hope they fix this license soon. It would be good to have another truly free speech synthesizer to play with, and this is definitely a huge step in that direction.
> 
> ~Kyle
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

