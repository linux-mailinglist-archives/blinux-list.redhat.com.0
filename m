Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id ED190825CC
	for <lists+blinux-list@lfdr.de>; Mon,  5 Aug 2019 21:59:51 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 652DD30EA183;
	Mon,  5 Aug 2019 19:59:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1A9F95E9C5;
	Mon,  5 Aug 2019 19:59:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 04E031800204;
	Mon,  5 Aug 2019 19:59:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
	[10.5.11.12])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x75Jxk8s030857 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 5 Aug 2019 15:59:46 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1E6B5BA59; Mon,  5 Aug 2019 19:59:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx14.extmail.prod.ext.phx2.redhat.com
	[10.5.110.43])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 161D560FA2
	for <blinux-list@redhat.com>; Mon,  5 Aug 2019 19:59:43 +0000 (UTC)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
	[209.85.160.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id AD5B13090FEE
	for <blinux-list@redhat.com>; Mon,  5 Aug 2019 19:59:42 +0000 (UTC)
Received: by mail-qt1-f177.google.com with SMTP id d23so82260288qto.2
	for <blinux-list@redhat.com>; Mon, 05 Aug 2019 12:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=RU37Q2nOZRpIsyIOOCIYLBPPTOYrRzfUQepdh5PtdRE=;
	b=VVsU3bv2WISZYe6CH4FtvUeaZnA2bOX2oA1LZuaRLTUWaacWCdErrozFKor3G7ck9E
	q9jQQelfvmJhPGWixwmxx3TVEFxKTF7KGI4vjv5w1J23Otel2BVNnocqLYJXR57ijzoE
	TP6riRsoMlC+9tGuxliSQyY/uFG5srIrrg0Hbagl42VKdMeaMpz7gFHqfW8L16SITvBA
	40feYCoXFRiKPTZjoBWsczrDBNHy46Yu1Ls5lnYSnpO9fzsFFGS4fgNlqATwGIR+CX8S
	/dno3TetQHybrXF6uHOYa1/+0DpJItRO2saFhT1b7G4XCWMSsNWFfha1IWUoqwlmqL4T
	yXpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=RU37Q2nOZRpIsyIOOCIYLBPPTOYrRzfUQepdh5PtdRE=;
	b=lbCKxktNjtohuo9pLk4Ad8jcpPJri3oiU4+pShd4+LqYT7D7ha7mvKx573NW34qKYM
	QlOqjXWD2TW1HSLqjb7KiRxMRoDNdY8NKSd/JoJScAC8Exn4EYUog/CoxpY5TwFg8Qjr
	BS0Ez2gSddiG9HPsA/XVFzdwfahMkJMaOpqtQoMCwMt6K0h2eJaVXhSvxa4NoVdDn9p5
	sBYn5IOKrSKb41x5eWDkgAHKgDbCCyrEri5uR7MXr/4QBfGFo7a5AS45LLoNm/cqE3Mw
	JSXBu0urQo+NkZTKrbVQXCARy0XNsxAwybaVopr9QodwkRgswdjTyfS/5x3/mds48jBW
	4K0g==
X-Gm-Message-State: APjAAAW+TFYKlcoOwCEk5WIl4WGjb4syOMhzGR5sUjL8u2rc8RhgBnou
	O2cDTIIBLS/0caS8WCxnatc1fF9bkCxeIlHFyAgP3w==
X-Google-Smtp-Source: APXvYqyce9LeEi9I7MMfXY9vo3kW3igXpuVUrEYLHc9UNBKTvWqw5uHIBW7Sr8MpBsBsitkOw7Y0D58j5KFmumEJsco=
X-Received: by 2002:ac8:7b99:: with SMTP id
	p25mr109104337qtu.243.1565035181750; 
	Mon, 05 Aug 2019 12:59:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6214:1353:0:0:0:0 with HTTP; Mon, 5 Aug 2019 12:59:41
	-0700 (PDT)
In-Reply-To: <20190805.195033.561.2@0.0.0.0>
References: <20190805.195033.561.2@0.0.0.0>
Date: Mon, 5 Aug 2019 12:59:41 -0700
Message-ID: <CAM+Q2c6km7FeRzd3W4VXNv904-CJbzUd0zeYA3_trQE-==C4Xg@mail.gmail.com>
Subject: Re: No F Key Boot Menu
To: blinux-list@redhat.com
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.43]);
	Mon, 05 Aug 2019 19:59:42 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.43]);
	Mon, 05 Aug 2019 19:59:42 +0000 (UTC) for IP:'209.85.160.177'
	DOMAIN:'mail-qt1-f177.google.com'
	HELO:'mail-qt1-f177.google.com' FROM:'abletec@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.119  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL, SPF_HELO_NONE,
	SPF_PASS) 209.85.160.177 mail-qt1-f177.google.com 209.85.160.177
	mail-qt1-f177.google.com <abletec@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.43
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.40]); Mon, 05 Aug 2019 19:59:50 +0000 (UTC)

Often the escape key can be used to bring up a boot menu. That being
said, there's usually an option in bios to set more than 1 boot drive,
such that if the 1st 1 doesn't contain bootable media, it'll move onto
the 2nd 1, etc.

On 8/5/19, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> My bios:
> Board: EVGA INTERNATIONAL CO.,LTD 131-HE-E995 1.0
> UEFI: American Megatrends Inc. 2.08 06/28/2019
> does not seem to have a function whereby you can select a device to boot
> from using one of the function keys. Instead, one must physically go into
> the bios and change boot order, if, for example, you wish to boot from a
> flash drive to install an OS. And if that flash drive is subsequently
> removed, the system will not boot, until you go into the bios and change the
> boot order, again.
> My question: is this normal bios behavior these days, or is something wrong
> in my particular implementation. I turned off the secure boot function in
> there. Would turning that on fix this? What else might I look for in the
> bios to either (a) allow for falling back on different devices should one be
> removed or (b) to allow the function key boot menu found in previous bios
> implementations.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>


-- 
Subscribe to a WordPress for Newbies Mailing List by sending a message to:
wp4newbs-request@freelists.org with 'subscribe' in the Subject field OR by
visiting the list page at http://www.freelists.org/list/wp4newbs
& check out my sites at www.brighter-vision.com & www.mysitesbeenhacked.com

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
