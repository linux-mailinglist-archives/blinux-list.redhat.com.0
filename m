Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 087E7255692
	for <lists+blinux-list@lfdr.de>; Fri, 28 Aug 2020 10:37:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598603841;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dwfYpGUp/+AIFJ2IjC1YfMOSQO+mGNqinWe+wW30G0o=;
	b=fv/wLjOoiU6uMA5zHSCgFSQFXGD8qsJv/ioUoKjYv/0dj/gbLU6w+QjcHKnRhlwuesMq3E
	IhCt3cAvSCNXgtAEWbyP+MkNbtChYJWozVrIl4qeflU6VihsK9VBqDXT2F/RK63eNJ3QYD
	QpJtFH1hg1XYH3Yvf4otyXbZIaDbr04=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-60-e93-WoAWMsu5vmtAoHajJQ-1; Fri, 28 Aug 2020 04:37:18 -0400
X-MC-Unique: e93-WoAWMsu5vmtAoHajJQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 424881074650;
	Fri, 28 Aug 2020 08:37:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 07B9180927;
	Fri, 28 Aug 2020 08:37:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9962F85CD;
	Fri, 28 Aug 2020 08:37:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07S8asoM017277 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 28 Aug 2020 04:36:54 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0E07910087C3; Fri, 28 Aug 2020 08:36:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 09C7C115D35B
	for <blinux-list@redhat.com>; Fri, 28 Aug 2020 08:36:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AD525800BED
	for <blinux-list@redhat.com>; Fri, 28 Aug 2020 08:36:51 +0000 (UTC)
Received: from mailbox.supranet.net (mailbox.supranet.net [66.170.1.9])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-204-He-AN9xrO6KG1WkQB_F8oA-1; Fri, 28 Aug 2020 04:36:49 -0400
X-MC-Unique: He-AN9xrO6KG1WkQB_F8oA-1
Received: from [68.190.112.237] (port=58568 helo=localhost)
	by mailbox.supranet.net with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.82 (FreeBSD)) (envelope-from <john@godtouches.org>)
	id 1kBZc4-000LNZ-Gz
	for blinux-list@redhat.com; Fri, 28 Aug 2020 03:19:56 -0500
Date: Fri, 28 Aug 2020 03:19:56 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: braille display question
Message-ID: <20200828081956.GA217851@abilitiessoft>
References: <159857735399.6.4830934744852641473.711949@slmail.me>
MIME-Version: 1.0
In-Reply-To: <159857735399.6.4830934744852641473.711949@slmail.me>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

I have used the pac Mate display with brltty. It works fine on both Debian and Redhat distros.

John

On Fri, Aug 28, 2020 at 03:15:52AM +0200, Linux for blind general discussion wrote:
> Hi everyone,
> I have a quick question about braille displays.
> Have any of you used the Pacmate 40 cell display with Linux? Especially those of you who use Slint as I am really interested in that Distro.
> I was thinking of using an Optelec Braille Voyager 40 but I don't see it supported on the BRLTTY list.
> Pacmate 40 does actually seem to be supported on the BRLTTY list so I'm thinking of getting that one, and just wanted to know if any of you use Pacmate 40, particularly with Slint?
> Thanks,
> SL
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 

-- 
John J. Boyer
Email: john.boyer@abilitiessoft.org
website: http://www.abilitiessoft.org
Status: Company dissolved but website and email addresses  live.
Location: Madison, Wisconsin, USA
Mission: developing assistive technology software and providing STEM services 
        that are available at no cost


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

