Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8164636A4
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 15:28:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638282501;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vqzfuT81dJ+BA8qEU71JaDg4FPblYJ0E8FrZNeH9xjU=;
	b=hdF8LdB7pLNgB3YHLgBB0R/zdGMDM65plisg/AhIYplhTt189cpvb1XN8AI0/Ozcgvq1oZ
	x2nx0j2YYTA67Bk7HAx19jJWD4fxLArh9OzVJJw6+jXRQhjatG130RbrEL5B2RrDFInykK
	tMH1WvR6Zx+JONglX4NpQ3H/b/AP4Qg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-210-UsaEpj5eNr276odtCDUxRA-1; Tue, 30 Nov 2021 09:28:17 -0500
X-MC-Unique: UsaEpj5eNr276odtCDUxRA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BA8FC1006AA4;
	Tue, 30 Nov 2021 14:28:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8E4676A023;
	Tue, 30 Nov 2021 14:28:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BFA641809C8A;
	Tue, 30 Nov 2021 14:28:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUERsnp020816 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 09:27:54 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id F2684401E39; Tue, 30 Nov 2021 14:27:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EE771401E31
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 14:27:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D3A3A10AF956
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 14:27:53 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-286-Oe8AZkNIO9GCDnER-9z_eg-1; Tue, 30 Nov 2021 09:27:51 -0500
X-MC-Unique: Oe8AZkNIO9GCDnER-9z_eg-1
Received: by mail-qt1-f171.google.com with SMTP id m25so20279804qtq.13
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 06:27:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=1rK9u2h+1VHHwTa0cWHM/eI3l48Zo+p5PnNPiunX500=;
	b=v+Cux1DNl/2u84jwIAg0JC6DxsfEmBAF94SIjc6DByS21OY0xwS2F//VtzGfq5DAMX
	ZJXtO3YqQC6cOJjGynW70IGQLH6N7FpTY0KWURatR1a7n1noOWa0p5qd00r/BtUrTJ5Y
	tQYZvHq6TyZNbO5upH1YiYvZh20cvo4B85t0USqez+5NA4YOHZbAZZKoyXVKAIPQKLm3
	XVwzfA6igPVStyxpzS3/nA13B6asg8vOmNCLhFJ/S3dm8g900jxqTr0lm1SN+rGVSsT/
	OP4P4H+nUQsn3RVLypgzW5xoDSTRh32taiaJxq1xTDqfqKMNsIGzgQ+AJaRG6uOfwkKD
	lbwA==
X-Gm-Message-State: AOAM532V+eMLqkJ2R2bhzLtj06EE390LgyIsHrd8JBS0kYSOrGR4fYMY
	9rQ5bYS7OPvJMUDemRIJWYDF+8+WBG5QH71y8SxNk63C
X-Google-Smtp-Source: ABdhPJwTwjcG18qf+SChR8ECTg66HzwDW8ycIqUjDoqYi1tpJNKeKkX8z+g0MGFRPZD0466faQ9ol9UpydIe7Suhyd8=
X-Received: by 2002:ac8:7f02:: with SMTP id f2mr50069441qtk.147.1638282471416; 
	Tue, 30 Nov 2021 06:27:51 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:c34a:0:0:0:0:0 with HTTP; Tue, 30 Nov 2021 06:27:50
	-0800 (PST)
In-Reply-To: <87bl22kqlz.fsf@brainpower.wer>
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
	<alpine.NEB.2.23.451.2111291731190.11659@panix1.panix.com>
	<878bd3e0-d05c-4132-52b4-d29893818041@gmail.com>
	<7d174815-a616-2abd-72e9-014ac8bf2b8b@slint.fr>
	<87bl22kqlz.fsf@brainpower.wer>
Date: Tue, 30 Nov 2021 14:27:50 +0000
Message-ID: <CAO2sX32s07jDN=1KiJCQ-31_gh5RAFFXBibGwKrLd4zuDpESKQ@mail.gmail.com>
Subject: Re: What is the easiest and most accessible editor?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I tend to find the editor wars, as well as the browser wars, console
wars, various fandom wars, etc. to be rather silly, but I'll say this
much:

I prefer tools I can jump right into with minimal foreknowledge and be
able to do the basics within minutes, learning how to use more
advanced features as needed, and if I need to do more than read
through the output of -h or --help to get started, I'm most likely
going to start searching for an alternative tool for what I'm trying
to do.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

