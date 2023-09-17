Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE417A344A
	for <lists+blinux-list@lfdr.de>; Sun, 17 Sep 2023 10:29:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1694939382;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RikPiGGotenuSc5hLxYZxTwCSjtHh+TJ5Xoms8QlD1w=;
	b=ce9jTVcOfIgk7IwviBKPIRG7EmCFWgKrPnlvyR7WkRfRWaUEM9vBHJasMIavIaaQHnHmVD
	DDz1rKo7bJCDyejQ+TpLIQ3E7WTbC4eK3rDrLItRIcKaJ9EkMYoyQkWjvlPYnHdyvwuh5y
	K8o92qWrPbCjtMVq3NmAMKbmcpy5hBU=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-457-aOWmrNj5MheD5LRp8T3_Bg-1; Sun, 17 Sep 2023 04:29:38 -0400
X-MC-Unique: aOWmrNj5MheD5LRp8T3_Bg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7F81F101A529;
	Sun, 17 Sep 2023 08:29:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 726892156A27;
	Sun, 17 Sep 2023 08:29:31 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id ACFB11946595;
	Sun, 17 Sep 2023 08:29:30 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 17 Sep 2023 09:29:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: UMAI 0.4: Welcome on Ubuntu Mate 23.04
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.90.1694915101.855698.blinux-list@redhat.com>
In-Reply-To: <mailman.90.1694915101.855698.blinux-list@redhat.com>
Message-ID: <mailman.109.1694939370.855701.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Could it work on other Debian-based distros like Linux mint?

On 9/17/2023 2:44 AM, Linux for blind general discussion wrote:
> Hello everyone,
> as the title suggests, today I released a new version of UMAI, the
> Ubuntu Mate Accessibility Improver utility.
>
> I felt this step to be increasingly more and more necessary, as the orca
> and accessibility development in general is progressing and leaving the
> last UM LTS in the dust. Wat's something I really love to see, except
> UMAI needed some updates too as a consequence.
>
> Either way, 0.4 is here, bringing the support for Ubuntu Mate 23.04, and
> all the new accessibility benefits.
>
> If you for some reason prefer sticking to LTS, that's fine too. 22.04
> remains supported like before, and will stay that way at least until 24.04.
>
> That's not the only change, though. Besides having the latest gnome-45
> Orca, 0.4 also removes the deb Firefox installation, meaning safer
> browsing and less annoyance with reinstalls, weirdly behaving icons etc.
>
> another important change is related to ocrdesktop. As those of you
> running the recent versions of Ubuntu / Debian have likely noticed,
> there is a new policy being enforced in regards to working with Python
> packages. It's no longer possible to install global packages /
> dependencies like before, every Python app needs to have its own virtual
> environment, where it's responsible for handling its dependencies.
>
> In other words, we're now forced to do things properly, what's quite a mess.
>
> Fortunately, if you don't want to fiddle with environments, packages and
> dependencies, UMAI will now do this for you, on all supported systems.
>
> I'm really, really glad I can provide this functionality, ocrdesktop is
> a critically essential accessibility tool, and I really can't imagine
> any newcomer to Linux who may have no technical knowledge / skills at
> all dealing with this.
>
> See:
> https://github.com/RastislavKish/umai
>
> for more information.
>
> Have fun
>
> Best regards
>
> Rastislav
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

