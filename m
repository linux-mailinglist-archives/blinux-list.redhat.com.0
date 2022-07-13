Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 719B4573CD6
	for <lists+blinux-list@lfdr.de>; Wed, 13 Jul 2022 20:58:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1657738728;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=k5TMsT31UMDKVF4q346EuqhZCYcPBaC2zgb8x0XWvwI=;
	b=Q/QzbaNY74iHkBRGtQw+2xANejXJ3QithFPIl17Ad+mLEwoU07rNQNXq9rrbJ4Uvys6ejY
	JAbGmAicBD5SgAP8TTInrl2JKmIO4IskD0syf5MIWUmxVB9gVuhQpKDowKBxf53oeJptXV
	sAkgzLb+VtNFDliRs8AWLs78Oxu0qzM=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-477-0AHpwwPSNRyVSXH-Z6pyjg-1; Wed, 13 Jul 2022 14:58:44 -0400
X-MC-Unique: 0AHpwwPSNRyVSXH-Z6pyjg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8BA62101A586;
	Wed, 13 Jul 2022 18:58:42 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9CB3340E80E0;
	Wed, 13 Jul 2022 18:58:39 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id EE4221947071;
	Wed, 13 Jul 2022 18:58:38 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 13 Jul 2022 14:58:33 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: wich is better mailing list or usenet newsgroup
In-Reply-To: <mailman.33376.1657729554.111203.blinux-list@redhat.com>
References: <mailman.33231.1657706289.111209.blinux-list@redhat.com>
 <mailman.33408.1657728131.111204.blinux-list@redhat.com>
 <mailman.33376.1657729554.111203.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.33459.1657738718.111204.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

As a contrast, I have not personally used a newsgroup more than perhaps a 
couple  of times in... hmm almost 34 years of computer use.
Mailing lists?  I draw upon them daily, several times a day in fact.
Part of my hinting at a major it depends, rather than there being an 
either / or, if that makes sense.
Kare



On Wed, 13 Jul 2022, Linux for blind general discussion wrote:

> Well, Kyle-and-All, I think both avenues have their purposes. Usenet goes 
> over nntp instead of smtp for mail. If you have a good usenet provider, you 
> can examin text discussions back in 2003. This is great if you know a subject 
> of interest. In a case of a mailing list, I suppose your search would need to 
> be much more specific-and-it would be helpful to know a list you want to look 
> at or join. Typing a search in a usenet news-reader is quite good. I still 
> use trn for reading-and-saving  binaries, but Alpine for posting.
> Chime
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

