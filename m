Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B40E94D5A22
	for <lists+blinux-list@lfdr.de>; Fri, 11 Mar 2022 05:57:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646974656;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=378tSKkUb10tf0ReTbQzF9J199VR7ApSBXQKJh4gVyg=;
	b=OHDLTJqWaLuAgMyIdexx3o9f5a2uGJkjbFEGtg8ibXSGyU+NehxZXv4yqsuuveJ8uT3R5p
	jqzb0NXvyc2Ew+Ewjjq8L/3t23jXD5HCz1/uBBqd+FeJuBAlnr1zHPRtHnkeAGXRq7iMgR
	psduvZJrZlCt2DtCRlnQ4GuQnPfkYUQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-610-GKjjqYr9POyAOdBM-XVptw-1; Thu, 10 Mar 2022 23:57:33 -0500
X-MC-Unique: GKjjqYr9POyAOdBM-XVptw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B045C858F19;
	Fri, 11 Mar 2022 04:57:31 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 036DE53D7;
	Fri, 11 Mar 2022 04:57:31 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id BF05F1971662;
	Fri, 11 Mar 2022 04:57:30 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 11 Mar 2022 12:57:18 +0800 (CST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: timidity question
In-Reply-To: <mailman.1397.1646974152.111207.blinux-list@redhat.com>
References: <mailman.1102.1646908108.111207.blinux-list@redhat.com>
 <mailman.1206.1646923298.111209.blinux-list@redhat.com>
 <mailman.1216.1646925508.111209.blinux-list@redhat.com>
 <mailman.1127.1646925747.111205.blinux-list@redhat.com>
 <mailman.1344.1646965435.111205.blinux-list@redhat.com>
 <mailman.1424.1646969106.111201.blinux-list@redhat.com>
 <mailman.1363.1646973593.111205.blinux-list@redhat.com>
 <mailman.1397.1646974152.111207.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1454.1646974650.111209.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Yes. fluidsynth and timidity was used the same soundfont file.

On Thu, 10 Mar 2022, Linux for blind general discussion wrote:

> Date: Thu, 10 Mar 2022 23:49:02 -0500
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: timidity question
> 
> soundfont /usr/share/soundfonts/default.sf2
>
>
> OK now I think I see something. Check for a file at 
> usr/share/soundfonts/default.sf2. I'm thinking that you probably don't have 
> such a file. If you do have a file with that name, use the file command to 
> determine what type of file it is. I am not aware of any distribution of 
> Timidity++ that includes default.sf2, nor am I aware of a package that 
> provides that file. If you have the file and it is in fact a soundfont, then 
> we're back to square 1. However, I think I may have found the problem, and 
> you can best fix it by changing default.sf2 to another soundfont file that 
> you do have in /usr/share/soundfonts. Obviously you do have soundfonts 
> available, since you have indicated that fluidsynth will play midi files. 
> It's just a matter of getting Timidity configured with the same soundfont 
> file.
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

