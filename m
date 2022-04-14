Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EB87350039E
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 03:24:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649899493;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BBXvs+BFmmokpojyQmhzEu3BnqtNeBgCM7g1eAMX3d4=;
	b=EjVeDFmxCZo9PzIR65sYqvt0W0HowvC52L3VRYDXoI9LbHk5o1iJQb767MDY3y8JC7bv0g
	qPQ1SvpsOQDOZLlt4UPeeUJymnVAa4NNoBKvRXqhkLgE3ySc7o5bfoRRK7Z/hu562zNQ5J
	WnWK8wgao7ZZghRb9dR9zRBb7Op1ZWI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-52-uhOiGeZpOzmcBQgedyE7MQ-1; Wed, 13 Apr 2022 21:24:50 -0400
X-MC-Unique: uhOiGeZpOzmcBQgedyE7MQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BB7CA80270C;
	Thu, 14 Apr 2022 01:24:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1D3DBC2812C;
	Thu, 14 Apr 2022 01:24:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id AE5641940353;
	Thu, 14 Apr 2022 01:24:47 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 13 Apr 2022 18:24:42 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: FYI - Command Line Programs for the Blind
In-Reply-To: <mailman.8419.1649897313.111204.blinux-list@redhat.com>
References: <mailman.8265.1649867972.111207.blinux-list@redhat.com>
 <mailman.8540.1649878555.111210.blinux-list@redhat.com>
 <mailman.8410.1649894371.111202.blinux-list@redhat.com>
 <mailman.8347.1649895046.111209.blinux-list@redhat.com>
 <mailman.8491.1649895487.111206.blinux-list@redhat.com>
 <mailman.8492.1649896846.111206.blinux-list@redhat.com>
 <mailman.8419.1649897313.111204.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.8423.1649899487.111202.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Thank you Karen, Kyle, and the person who is deaf/blind, which had no name at 
an end of comments. Anyway, thank all of you for wonderful explainers on these 
conceppts. And no, Kyle, I didn't think you were swinging. And speaking of 
audio, I just got a newer laptop, which came with windows11pro, which we 
nuked-and-installed Debian SID. An installer has espeak guiding us, but once we 
need to reboot for changes to take affect, no more speech or sound. At times 1 
time a boot will have speech, but a majority of boots will not have any sound. 
How mysterious. Thanks in advance for any suggestions-and-please feel free in 
creating a new subject-line if you like as to not confuse others following this 
one.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

