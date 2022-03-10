Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EC78C4D4989
	for <lists+blinux-list@lfdr.de>; Thu, 10 Mar 2022 15:41:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646923308;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BgvyE97iLhAkvlzX4SPPM0Ls0RbROo8gpa7IeLBV5Uk=;
	b=RT6E2Q5m4wyDnOfbqjyumbTR68Kko8hFaHmEtLXnOhrzev28Noj3EGFiHm0HQJ2nCKc8mQ
	8RRyZ2pvwGb2Ps+oy3AcYHWcPZjCreSrs9w5bobtLK3gPVvZjYcFCd4lXSFAZpE2B7QEc1
	892uCP0pYMYVdaH8sPj0FOgqb6uyFnQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-303-DjKLrX8YOPG2PI4DWRk27A-1; Thu, 10 Mar 2022 09:41:44 -0500
X-MC-Unique: DjKLrX8YOPG2PI4DWRk27A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0D1D8185A794;
	Thu, 10 Mar 2022 14:41:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4029B1400E75;
	Thu, 10 Mar 2022 14:41:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 81882195FD63;
	Thu, 10 Mar 2022 14:41:39 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 10 Mar 2022 09:41:25 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: timidity question
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1102.1646908108.111207.blinux-list@redhat.com>
In-Reply-To: <mailman.1102.1646908108.111207.blinux-list@redhat.com>
Message-ID: <mailman.1206.1646923298.111209.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

You need a soundfont in order to play sound. You should have a 
configuration file either in /etc/timidity/timidity.cfg, 
/etc/timidity/timidity++.cfg, /etc/timidity++/timidity.cfg, 
/etc/timidity++/timidity++.cfg, /etc/timidity.cfg or 
/etc/timidity++.cfg. In whatever of those files you have, you should 
have a line that looks like

soundfont /usr/share/soundfonts/something/sf2

You will need to uncomment this line if it's commented out, and point it 
to the soundfont you want to use. Most distributions have the Fluid 
soundfonts, so your line may look like

soundfont /usr/share/soundfonts/FluidR3_GM.sf2

If you have others, you can use whichever one you like, just be sure 
that you point the soundfont line as above to the file you want to use. 
I like to have several different soundfonts for various pieces of music. 
So I have several lines similar to this, and I like to uncomment the 
line I want to use and leave the comments on the rest of them.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

