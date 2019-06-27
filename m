Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB8358503
	for <lists+blinux-list@lfdr.de>; Thu, 27 Jun 2019 16:59:16 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 98DD63071524;
	Thu, 27 Jun 2019 14:58:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 396945D71B;
	Thu, 27 Jun 2019 14:58:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D84FB1806B1A;
	Thu, 27 Jun 2019 14:58:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
	[10.5.11.15])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x5REvwtG004404 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 Jun 2019 10:57:59 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B221D5D719; Thu, 27 Jun 2019 14:57:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx05.extmail.prod.ext.phx2.redhat.com
	[10.5.110.29])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AB1055D71B
	for <blinux-list@redhat.com>; Thu, 27 Jun 2019 14:57:55 +0000 (UTC)
Received: from mail.carmickle.com (mail.carmickle.com [69.164.218.211])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id B8AE237F41
	for <blinux-list@redhat.com>; Thu, 27 Jun 2019 14:57:13 +0000 (UTC)
Received: from [192.168.116.128] (unknown [176.230.58.119])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.carmickle.com (Postfix) with ESMTPSA id 3BC1F4CBD466
	for <blinux-list@redhat.com>; Thu, 27 Jun 2019 14:57:07 +0000 (UTC)
Date: Thu, 27 Jun 2019 17:57:04 +0300 (IDT)
X-X-Sender: gshang@debian.work
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Using $PROMPT_COMMAND to beep depending on success/failure
In-Reply-To: <20190627131054.GA3329@rednote.net>
Message-ID: <alpine.DEB.2.11.1906271756180.75607@debian.work>
References: <20160420134111.2629abd1@bigbox.christie.dr>
	<20190627131054.GA3329@rednote.net>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quitelikely.com;
	s=20160808-mail; t=1561647427;
	bh=RdwYGoJkQRUDJKliFJX+pnFtXk8V1VhhEQJ+RFFADJE=;
	h=Date:From:To:Subject:In-Reply-To:Message-ID:References:MIME-Version:Content-Type;
	b=RM64Pnfuied782KP2siiKZ9BA/cI2eXJU1RuPqpyHiLwF/jRS8U3CH/cR96j4vFXmDbIHp+WVAtjUJhYTu7rdYqVXnb8D645wfH3k06Y0chWN+B3X9RQNOpCGATfUYls8Q0Ln20HFDV2V0jqzRHKtzJcTIJMz6UxG4qEWubI148=
X-Greylist: Sender passed SPF test, ACL 242 matched, not delayed by
	milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]);
	Thu, 27 Jun 2019 14:57:49 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]);
	Thu, 27 Jun 2019 14:57:49 +0000 (UTC) for IP:'69.164.218.211'
	DOMAIN:'mail.carmickle.com' HELO:'mail.carmickle.com'
	FROM:'geoff@QuiteLikely.com' RCPT:''
X-RedHat-Spam-Score: -0.1  (DKIM_SIGNED, DKIM_VALID,
	DKIM_VALID_AU) 69.164.218.211 mail.carmickle.com
	69.164.218.211 mail.carmickle.com <geoff@QuiteLikely.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.29
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.49]); Thu, 27 Jun 2019 14:59:15 +0000 (UTC)

On Thu, 27 Jun 2019, Linux for blind general discussion wrote:

> play WARN alsa: can't encode 0-bit Unknown or not applicable

Assuming that console beeps work for you, you could use the beep command. 
Would be a lot simpler IMHO.

HTH,
Geoff.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
