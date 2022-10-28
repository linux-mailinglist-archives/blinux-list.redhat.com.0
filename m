Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 283E16106BC
	for <lists+blinux-list@lfdr.de>; Fri, 28 Oct 2022 02:19:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666916351;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7rtIm0/ZpS0sWgdh4RsXzEj3o8eQ2iiqJ9HETFB1N1k=;
	b=LD/4MJRLYiefQPX22p9UytQ/JsydtfGBzInTvNHmpJ/aRlT8KaytZhk+qS8Gu7wNI437rZ
	gKtzxdBkWiuapb3u/peZpb4DsD6bGCjbkrU5N2FYWN1pCJxpiKgb8yUsFuTaS+5xN3RA9R
	XmFgMmj5sRgYGMB4wER2muaG+s2Rq/I=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-549-wrOt4QIWMNGYXMEQ3GXs0g-1; Thu, 27 Oct 2022 20:19:09 -0400
X-MC-Unique: wrOt4QIWMNGYXMEQ3GXs0g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D814B85A5B6;
	Fri, 28 Oct 2022 00:19:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9E029C15BA8;
	Fri, 28 Oct 2022 00:19:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 33E001946A7F;
	Fri, 28 Oct 2022 00:19:04 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 27 Oct 2022 20:18:48 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Chromium-based browser local .desktop files (was Re: void-linux)
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.3229.1666863125.3003.blinux-list@redhat.com>
 <mailman.3171.1666863524.3004.blinux-list@redhat.com>
 <mailman.3232.1666864286.3003.blinux-list@redhat.com>
 <mailman.3046.1666864669.3009.blinux-list@redhat.com>
 <mailman.3174.1666865573.3004.blinux-list@redhat.com>
 <mailman.3148.1666903063.3012.blinux-list@redhat.com>
 <mailman.3315.1666906969.3011.blinux-list@redhat.com>
 <mailman.3202.1666908770.3007.blinux-list@redhat.com>
 <mailman.3203.1666911224.3007.blinux-list@redhat.com>
In-Reply-To: <mailman.3203.1666911224.3007.blinux-list@redhat.com>
Message-ID: <mailman.3297.1666916343.3004.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

According to Jude:
> Brave browser with nothing in .desktop file doesn't speak.
> Brave-browser with --enable-caret-browsing doesn't speak.
> brave-browser with --enable-caret-browsing --force-renderer-accessibility
> doesn't speak.
> brave-browser with --enable-caret-browsing --force-renderer-accessibility
> --enable-speech-dispatcher doesn't speak.
> brave-browser is missing accessibility for screen readers like orca.


Seems Brave and other Chromium-based browsers no longer need the option 
flags. The Exec= line in my .desktop file is

Exec=/usr/bin/env ACCESSIBILITY_ENABLED=1 /usr/bin/brave-browser %U

Based on this line as it appears now, I think just sticking

export ACCESSIBILITY_ENABLED=1

either in a local profile script or in a file in /etc/profile.d should 
be all that is required to get any Chromium-based browser including 
brave speaking with Orca now. None of the option flags appear to be 
needed, possibly for some time now. This change nearly got by me 
unnoticed, although I'm sure I removed the flags once they were no 
longer needed. I will report back after I have removed my local .desktop 
files and added an accessibility profile script to address this.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

