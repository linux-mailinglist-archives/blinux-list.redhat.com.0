Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 364405927FB
	for <lists+blinux-list@lfdr.de>; Mon, 15 Aug 2022 05:09:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660532995;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=NHLCxPaQ8cZt6/M0Agpb+LdL5lYkcyiVQw5RWh+/epQ=;
	b=doxkSUJJFDyzfwLtvrsH7u8ETbLOnlOWAapPE/9SEAIoyByCCcE3ewexc5lycIknGdYLWD
	aV8kkBIwuApneNTotYp5T4Fzwna5lAln/gSNztz5GNKFN55uRtrdMQvZ5Lw2Odc07/HPbj
	R+I1EW7In5AGF8BlO/IX44P/lYEadgM=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-563-SRLgZ6I_Nii6EdLbW33eog-1; Sun, 14 Aug 2022 23:09:51 -0400
X-MC-Unique: SRLgZ6I_Nii6EdLbW33eog-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D19EA8037AA;
	Mon, 15 Aug 2022 03:09:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 39BA640CF916;
	Mon, 15 Aug 2022 03:09:41 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 356671946A49;
	Mon, 15 Aug 2022 03:09:40 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 14 Aug 2022 23:09:26 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <Pine.LNX.4.64.2208112229350.1215855@server2.shellworld.net>
 <YvhV4TWzuP2O1JAZ@novena-choice-citizen>
 <Pine.LNX.4.64.2208132205110.1261053@server2.shellworld.net>
 <mailman.526.1660482367.10505.blinux-list@redhat.com>
 <mailman.570.1660487404.10502.blinux-list@redhat.com>
 <mailman.564.1660515996.10499.blinux-list@redhat.com>
In-Reply-To: <mailman.564.1660515996.10499.blinux-list@redhat.com>
Message-ID: <mailman.613.1660532979.10500.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Folks might also remember Matt for trplayer, which was a Linux console
> player for RealAudio streams.


Wow it has been a long time indeed, but I actually do remember trplayer. 
I didn't use zipslack or zipspeak, but I did start with Slackware 
running the speakup.i kernel. I very quickly switched to Red Hat 9 
because it had more available packages,, but I did have to use the 
telnet install at that time with a second computer that had Speakup 
already installed, because there was no precompiled speakup kernel at 
that time, but I braved kernel compilation to get Red Hat working and 
speaking, especially after I figured out just how easy it was to build 
rpm packages at that time. Actually, it's still fairly easy to build rpm 
packages these days, even though the system is a bit more complex than 
it once was. Fortunately we have really good package management now that 
we didn't have back in those days. Still, even with the evolution of 
Linux over the years, it is still by far the easiest to use, especially 
since I'm a bit too old now to learn the latest Microsoft crap that I 
abandoned so many years ago.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

