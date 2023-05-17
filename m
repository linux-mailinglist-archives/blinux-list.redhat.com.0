Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B48706D0E
	for <lists+blinux-list@lfdr.de>; Wed, 17 May 2023 17:39:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1684337992;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=M8VoFq6kgUiewKf1lZEjSPYZVOfDrVRRL/e0+TR3m8g=;
	b=XUXqIE/I/CXCPNR54ehj3j9bX/e8JQha0+hsN0lLpVUQ2nwXFEZVxCqMg/aUtCsH4wGQyE
	DNru0wEebsu6qJFGLXHB9f3Ibql/IR4arPFz0utEVHdxQSfmaDjcnSYSq7isVIhGJLhypU
	OaJ4w+pyCnOXVqxM9I/l/zKFv8xe1eA=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-125-aIx3r5guNVegzhrbPfYwig-1; Wed, 17 May 2023 11:39:48 -0400
X-MC-Unique: aIx3r5guNVegzhrbPfYwig-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2FF962A59558;
	Wed, 17 May 2023 15:39:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9E015C15BA0;
	Wed, 17 May 2023 15:39:41 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id CE5DF19465B5;
	Wed, 17 May 2023 15:39:40 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 17 May 2023 11:39:36 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: PDF viewers in May 2023?
In-Reply-To: <mailman.809.1684323027.1505522.blinux-list@redhat.com>
References: <mailman.745.1684316255.1505526.blinux-list@redhat.com>
 <mailman.809.1684323027.1505522.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1033.1684337980.1505522.blinux-list@redhat.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi folks,
Have shared this often, but want to expand.
Robobraille,
www.robobraille.org
Has scores  of ways to manage pdf files, including converting them to 
other formats, even audio ones if desired.
They convert other things as well like epub.
  visit the site, search or read their supporting  sections, and expand 
your  choices if it helps.



On Wed, 17 May 2023, Linux for blind general discussion wrote:

>
> On 17/5/23 05:37, Linux for blind general discussion wrote:
>>
>>  Has there been any improvement between 2020 and 2023 as far as Orca and
>>  pdf viewers.
>> 
> I haven't been tracking it. The PDF reader in Chromium is now an option 
> (though it probably was in 2020 as well). Evince worked reasonably when I 
> last tried it.
>
> My advice is to have several PDF applications available, as different tools 
> will give different results for the same file - some better than others. this 
> is true regardless of operating system. Most PDF files are not tagged, and as 
> a consequence, their accessibility is bound to be mediocre, again regardless 
> of operating system. For example, structural navigation won't be reliable (as 
> the underlying structure is not explicitly represented in the PDF file if it 
> isn't tagged, and tools that attempt to derive the structure from 
> presentation make errors).
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

