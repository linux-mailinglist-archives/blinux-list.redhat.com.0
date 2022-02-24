Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C13264C2AC6
	for <lists+blinux-list@lfdr.de>; Thu, 24 Feb 2022 12:22:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645701738;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=l/vYAFkINKbwoFL3cs2xtG7DkoQmDUj598Lb2hLe0kU=;
	b=AqiUzh/o5ZQ9ecJ3FKXx5WMvUXEUIVFJFmQxiPwLv7wp1abCxaqGDpAe7EDg57K/csx5nS
	6MD9fSN2OtGyLN0Ime+oL5wbQ/HCAIkfS5A3ASTxu5yI4KsZ13ND7f//q0qJtXjEgHrtF4
	MCQQI2YWrPEUQgS9Mr82yuDtEGaLqa8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-356-3QC0c2beMGGS6Sjx-3R07w-1; Thu, 24 Feb 2022 06:22:14 -0500
X-MC-Unique: 3QC0c2beMGGS6Sjx-3R07w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 90B3B100C610;
	Thu, 24 Feb 2022 11:22:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3A9472378B;
	Thu, 24 Feb 2022 11:22:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 88DED4A701;
	Thu, 24 Feb 2022 11:22:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21OBLr8c023139 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 24 Feb 2022 06:21:53 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0E850142B968; Thu, 24 Feb 2022 11:21:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0AC37142B950
	for <blinux-list@redhat.com>; Thu, 24 Feb 2022 11:21:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E59F385A5BE
	for <blinux-list@redhat.com>; Thu, 24 Feb 2022 11:21:52 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com
	[209.85.208.173]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-584-ii05KUxmOWWYWLanNA-E_A-1; Thu, 24 Feb 2022 06:21:51 -0500
X-MC-Unique: ii05KUxmOWWYWLanNA-E_A-1
Received: by mail-lj1-f173.google.com with SMTP id t14so2318898ljh.8
	for <blinux-list@redhat.com>; Thu, 24 Feb 2022 03:21:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=lVryqCZZ7vW6+OpxkhK1gzSJTKj2KkWIxhDmWdrQjVg=;
	b=Qt6wQft2cYnHwOw8bHVLS82V5OyaRVxhiNaj3rdFR/uLU3/FR7a+BZkEw2HsNaxVgQ
	t5dqvH7drzqjMq2GPYdsOkpBNEY+P7F+PyC/PAkZdT7jILOeblnQr0MPICwWoE5EM4ku
	z96yIjKexy0bgd67StL2EZp9qrVuccf34idLQfyw7JglBVDEAji+gOOUFbqZ6IUZkuYs
	qCxhXCWPQNybN4T03E85OI+DZKoO5q4AsF/T7sF620A1Q3Ub1hJurYfhoynU0gEn/sfC
	tmDeYKMRxJ5jT411ZWfq430S3bkTPflruHRAygaE8nQlMugu+p0ZsYlG7QVLBkxiFcmM
	9QbQ==
X-Gm-Message-State: AOAM533a3/OKQ9KkWogK1faBrVOdhqmvhfNrXpBLyWCwmx7ITeUdfIRL
	CWwu/W+JBZipHCCHCdAR6AElvxzOS8Y=
X-Google-Smtp-Source: ABdhPJz7OvAib/AOSX1/y8rNtjvdjmpPhhP24kNuLpnA4vfBoC6si1Lja3/m4/xkLoWT7WJQSzOPEg==
X-Received: by 2002:a2e:9ac1:0:b0:244:ca:281e with SMTP id
	p1-20020a2e9ac1000000b0024400ca281emr1539030ljj.20.1645701709422;
	Thu, 24 Feb 2022 03:21:49 -0800 (PST)
Received: from localhost ([91.77.167.245]) by smtp.gmail.com with ESMTPSA id
	u17sm320203ljd.137.2022.02.24.03.21.47 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 24 Feb 2022 03:21:48 -0800 (PST)
Date: Thu, 24 Feb 2022 14:21:46 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Easiest way to back up/pull data from a cloud w/speakup or Fenrir?
Message-ID: <20220224112146.fb4ej65kf4dlbtsu@alex-pc>
References: <Yha/ohci65ePLjtV@waffles>
	<20220224072012.eun2tl6dqldvdoao@alex-portable>
	<YhdcOBSEnEmsKrT3@waffles>
MIME-Version: 1.0
In-Reply-To: <YhdcOBSEnEmsKrT3@waffles>
User-Agent: NeoMutt/20211029
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Feb 24, 2022 at 10:21:44AM +0000, Linux for blind general discussion wrote:
> But don't most of the providers (well okay I only tried dropbox/google
> drive) need you to fire up a browser for getting a token to authorize
> rclone?

you can use another browser for that.

> Git sounds like a good idea. Essentially, fresh install, no desktop, and
> still at that point where I want my stuff easily snaggable on any fresh
> machine.
> 
> So how easy is it to make a git repo that only I can access?

it's easy. just register on github or gitlab and create a privat repo.

-- 
Sincerely, Alexander

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

