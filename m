Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE914EC7E4
	for <lists+blinux-list@lfdr.de>; Wed, 30 Mar 2022 17:11:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1648653113;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+DSoUKYQCuugtEtYV+Ry4EdKTFFWz/aOIZbCjg83JNI=;
	b=fvvk2gkhUjDhHwMp14T0sb4mjY3xwERq8mVxNOoBLdUbyGxeeYvt3VxmhXM7GL1I3Hx8n2
	92MAHL+ysCEBFtMr9k8xv5iKptIeIuIlKyqaOicTXqZFj67SCd15i1e+VGvCYqDuq4PSMH
	LvTCp6MCvtXkYl9z64bYqbyqnlyBPow=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-670-MYs_paZjPTOTCI4dEhv9cw-1; Wed, 30 Mar 2022 11:11:49 -0400
X-MC-Unique: MYs_paZjPTOTCI4dEhv9cw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B105D18013AE;
	Wed, 30 Mar 2022 15:11:47 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A4DE057C3DD;
	Wed, 30 Mar 2022 15:11:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id AE94D1947BBF;
	Wed, 30 Mar 2022 15:11:34 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 30 Mar 2022 11:11:20 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Looking for a multiple editor
References: <mailman.5591.1648651427.111206.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.5591.1648651427.111206.blinux-list@redhat.com>
Message-ID: <mailman.5401.1648653094.111207.blinux-list@redhat.com>
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
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


This sounds like a job for sed.
#!/bin/ksh

for i in `ls files.*`
do
cat $i | sed -e "s/Mike/Joe/g" > /tmp/file$$
mv /tmp/file$$ $i
done


On Wed, Mar 30, 2022 at 09:43:41AM -0500, Linux for blind general discussion wrote:
> I have a number of texts in which I wish to make alterations that are the same for all of them. I think that there is a linux program in which I can list the alterations and them have them made.
> but I can't remember what it is called. Please refresh my memory.
> 
> thanks,
> John
> 
> -- 
> John J. Boyer
> Email: john.boyer@abilitiessoft.org
> website: http://www.abilitiessoft.org
> Status: Company dissolved but website and email addresses  live.
> Location: Madison, Wisconsin, USA
> Mission: developing assistive technology software and providing STEM services 
>         that are available at no cost
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

-- 
Rudy Vener
Website: http://www.rudyvener.com
Twitter: https://twitter.com/RudySalt

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

