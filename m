Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4312C691F91
	for <lists+blinux-list@lfdr.de>; Fri, 10 Feb 2023 14:07:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1676034470;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/Z4juf8nWQsiRw2o6orE1Xq3KnkZ5vBJJcwquTWRQHY=;
	b=CHXYElWM0/GgwtliUgeOI8y4jHebtczFEK8GeDxKXumAH+8cnHUXDBohXkCYal2uGt1/pI
	7y+8gTYL1o2wPgS9T1336C41O4/cQt4NEECxtuhX5FR0k1AfxTFtdG1ti6fLoyddrLgAUl
	C/swopGK+Xwe7MauAmso6DTMKeNDT2o=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-595-Xn8LLUHCMGWv8UyrSjW0gA-1; Fri, 10 Feb 2023 08:07:46 -0500
X-MC-Unique: Xn8LLUHCMGWv8UyrSjW0gA-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D11443C025B7;
	Fri, 10 Feb 2023 13:07:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B0556492B00;
	Fri, 10 Feb 2023 13:07:41 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 46DE719465A2;
	Fri, 10 Feb 2023 13:07:41 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 10 Feb 2023 15:02:45 +0200 (SAST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Can I Launch Alpine on Startup with a higher Priority?
In-Reply-To: <mailman.5622.1675966853.8172.blinux-list@redhat.com>
References: <mailman.5622.1675966853.8172.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.5326.1676034460.8168.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,
You can use a command like
nice -10 alpine
to run alpine at -10 priority, but why you would want to run alpine with a 
high priority, I do not understand.
Regards, Willem


On Thu, 9 Feb 2023, Linux for blind general discussion wrote:

> Hi All: While I considered asking on alpine-info, I guess this is more of a 
> generic Linux inquiree? Sure, I can use sudo renice to alter from 0 to -20 
> but I first must run ps -a and look for a process number which matches the 
> console-and-application. I would really like to always launch alpine with a 
> renice of -20, as it seems to behave a bit better while exporting binary 
> news-group articles to a file. Ideally it would be nice if you could just run 
> renice with a name of an application, but even worse, you wouldn't know what 
> process number it will be useing. Thanks so much in advance for any tips.
> Chime
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

