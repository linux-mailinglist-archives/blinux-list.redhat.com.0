Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C535B4D4CB0
	for <lists+blinux-list@lfdr.de>; Thu, 10 Mar 2022 16:18:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646925515;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=AcYbQfbq4uBpD9+oc0g48ymQkUMa9pwDarh4unV1VSA=;
	b=RsKIgWRML5d6i/47g+tO1NN5jgZxHJ4QdY7m8xeaxy42Hvzm0Jxe+KBpJjhzog+ayj9VZU
	3F+RzVBvuNFAOgF6TQtcYxPuXkshkCvZdV4Z0Mls0W0q1wZnErFPHLQIsRugd5OLWGq3XV
	DK3O58fV5kkg1s3XokhvOc6R5LQfOU8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-656-xsIbUuQ9PTGbwrXQqlbeRw-1; Thu, 10 Mar 2022 10:18:32 -0500
X-MC-Unique: xsIbUuQ9PTGbwrXQqlbeRw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C06F61801387;
	Thu, 10 Mar 2022 15:18:30 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 593A6440EE1;
	Thu, 10 Mar 2022 15:18:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B4691195FD63;
	Thu, 10 Mar 2022 15:18:28 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 10 Mar 2022 23:18:13 +0800 (CST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: timidity question
In-Reply-To: <mailman.1206.1646923298.111209.blinux-list@redhat.com>
References: <mailman.1102.1646908108.111207.blinux-list@redhat.com>
 <mailman.1206.1646923298.111209.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1216.1646925508.111209.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Thank you Kyle! I have all those you said but just no sound. I can play 
other sound files except midi.

On Thu, 10 Mar 2022, Linux for blind general discussion wrote:

> Date: Thu, 10 Mar 2022 09:41:25 -0500
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: timidity question
> 
> You need a soundfont in order to play sound. You should have a configuration 
> file either in /etc/timidity/timidity.cfg, /etc/timidity/timidity++.cfg, 
> /etc/timidity++/timidity.cfg, /etc/timidity++/timidity++.cfg, 
> /etc/timidity.cfg or /etc/timidity++.cfg. In whatever of those files you 
> have, you should have a line that looks like
>
> soundfont /usr/share/soundfonts/something/sf2
>
> You will need to uncomment this line if it's commented out, and point it to 
> the soundfont you want to use. Most distributions have the Fluid soundfonts, 
> so your line may look like
>
> soundfont /usr/share/soundfonts/FluidR3_GM.sf2
>
> If you have others, you can use whichever one you like, just be sure that you 
> point the soundfont line as above to the file you want to use. I like to have 
> several different soundfonts for various pieces of music. So I have several 
> lines similar to this, and I like to uncomment the line I want to use and 
> leave the comments on the rest of them.
>
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

