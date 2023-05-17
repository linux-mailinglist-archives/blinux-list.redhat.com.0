Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 549B97066B1
	for <lists+blinux-list@lfdr.de>; Wed, 17 May 2023 13:30:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1684323038;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zg2HIwefudEugpAeorQJ6KZHcs12Q19qBhJBYlsZ3kw=;
	b=JbzilVuHUqNEYpQbz10s0nuIU5whR66chijcgTfiu1TdJtJmTKqltyuKiihJvCAKkctvCL
	JtRRwr39PJlKJx9QBLtHhVD1i/9al6SemOf9l0Ba5eHCeGM/B4m2YdZZICJ61uWvYhOdGs
	aHKxYhqTLE+1YmZKUUjti0zRnvr5yIc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-250-GyO7WSmgOYamerHtPism8g-1; Wed, 17 May 2023 07:30:33 -0400
X-MC-Unique: GyO7WSmgOYamerHtPism8g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9993D101A556;
	Wed, 17 May 2023 11:30:31 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 73AF140C2063;
	Wed, 17 May 2023 11:30:28 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id CDB1319465B5;
	Wed, 17 May 2023 11:30:27 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 17 May 2023 07:30:08 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
To: blinux-list@redhat.com
References: <mailman.745.1684316255.1505526.blinux-list@redhat.com>
Subject: Re: PDF viewers in May 2023?
In-Reply-To: <mailman.745.1684316255.1505526.blinux-list@redhat.com>
Message-ID: <mailman.809.1684323027.1505522.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"


On 17/5/23 05:37, Linux for blind general discussion wrote:
>
> Has there been any improvement between 2020 and 2023 as far as Orca 
> and pdf viewers.
>
I haven't been tracking it. The PDF reader in Chromium is now an option 
(though it probably was in 2020 as well). Evince worked reasonably when 
I last tried it.

My advice is to have several PDF applications available, as different 
tools will give different results for the same file - some better than 
others. this is true regardless of operating system. Most PDF files are 
not tagged, and as a consequence, their accessibility is bound to be 
mediocre, again regardless of operating system. For example, structural 
navigation won't be reliable (as the underlying structure is not 
explicitly represented in the PDF file if it isn't tagged, and tools 
that attempt to derive the structure from presentation make errors).

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

