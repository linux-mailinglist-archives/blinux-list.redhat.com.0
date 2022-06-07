Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E170553FFA4
	for <lists+blinux-list@lfdr.de>; Tue,  7 Jun 2022 15:03:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1654606984;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=iL/RYQx3yUv5fjXs7Ion9ZpwafqXaORFlcCbR7gP4pk=;
	b=bZG82mCC/rNQkuut4escBW5LrpwDzNDXCXsTvBiuSX1hs6wjWdj5le4ffLsj4hRc9Lvr7q
	0BAdb+qeAnXNcxKKpPB6cPEhrS1YxY3A2DcoPq3Ods7+VDTU+3tSPnoTK9mDmCXx6AKh5v
	4iyg1iC21HmXJhAYjSlKuPKVxcSIkO4=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-232-ciU73-JgOTSnGWkLe1M4fA-1; Tue, 07 Jun 2022 09:03:02 -0400
X-MC-Unique: ciU73-JgOTSnGWkLe1M4fA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E768629DD983;
	Tue,  7 Jun 2022 13:03:00 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9C1AF208AB61;
	Tue,  7 Jun 2022 13:02:54 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DCDA91947B87;
	Tue,  7 Jun 2022 13:02:53 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.21900.1654458346.111208.blinux-list@redhat.com>
References: <mailman.21931.1654440086.111204.blinux-list@redhat.com>
 <mailman.21730.1654451477.111203.blinux-list@redhat.com>
 <mailman.21900.1654458346.111208.blinux-list@redhat.com>
Date: Tue, 7 Jun 2022 14:02:46 +0100
Subject: Re: nvda2speechd, let Windows programs talk through Speech dispatcher
To: blinux-list@redhat.com
Message-ID: <mailman.22357.1654606973.111201.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

As said on the Github page. I'm running this under Arch and get no
output at all.

what I do

1. Download Windows exe and extract it

2. Grab the server/client and rename/replace nvdaControllerxx.dll
where xx is 32 or 64

3. start the server with ./nvda2speechd in its folder

4. wine windowsexe.exe

I get a connection has been established on the tab with the
nvda2speechd running, and no speech from the program at all however,
and a boatload of WINE Sapi errors, it seems* to me like it's looking
for the SAPI stuff

Am I missing someething super super obvious here or?

On 05/06/2022, Linux for blind general discussion
<blinux-list@redhat.com> wrote:
> I avoid GUI apps in general and I think the last time I used Wine
> might have been years before I went blind, but this still sounds like
> a significant step forward for the accessibility of non-native
> software, and surprisingly elegant to boot.
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

