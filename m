Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C799509DFA
	for <lists+blinux-list@lfdr.de>; Thu, 21 Apr 2022 12:48:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1650538093;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=TnKbkakjUD2GBH66M3aHA087UwmRJmXfqo7Ys8GM5G0=;
	b=OL7F3T0+2ubc9ggYiKrjL3eTS8+cyuApu0/VBlyIDeNtSzETpVlf9+tPqAKxjtSKsTtsT/
	GbuANvjEHOzKL+jsZ13ANVf5NA1uSLHHdSQz168QOiuclxtF6FIp8A1GuSa880wwlhnhk0
	H+0zpOFhdr4xz6a44bn+gDERudabZck=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-428-eH2raF2JPc-1Zg65soZzyg-1; Thu, 21 Apr 2022 06:48:10 -0400
X-MC-Unique: eH2raF2JPc-1Zg65soZzyg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7D3E7800B28;
	Thu, 21 Apr 2022 10:48:08 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4FBE3C27EB8;
	Thu, 21 Apr 2022 10:48:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 5734D194034C;
	Thu, 21 Apr 2022 10:48:05 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 21 Apr 2022 11:47:59 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Textbased installation of VMs in VirtualBox
References: <mailman.9706.1650458473.111206.blinux-list@redhat.com>
 <mailman.9836.1650463902.111210.blinux-list@redhat.com>
 <mailman.10095.1650485870.111206.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.10095.1650485870.111206.blinux-list@redhat.com>
Message-ID: <mailman.10132.1650538084.111208.blinux-list@redhat.com>
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
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Apr 20, 2022 at 01:17:42PM -0700, Linux for blind general discussion wrote:
Vagrant was my first thought or how to handle something like this since I'm not familiar enough with Virtualbox/VMware to know if you can still do text installs, I'll leave qemu off to the side for now though but, to me Vagrant seems to tick all the boxes for what the OP wants to do, albeit with an install in the background and coming up with a fully ready to go system.

Rich, can Vagrant be configured to install as if you were at the keys, with a username, password, et al? I'm not sure on that at all though

 
> > On Apr 20, 2022, at 07:11, Jace wrote:
> > 
> > I'd suggest something like Vagrant for it if you're comfortable with editing the Vagrantfile it generates
> 
> I've used Vagrant and found that it worked quite well for me.  Then again, I'm a programmer...
> 
> - Rich Morin
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

-- 
Jace's words are up there. Quoted and old messages below this point

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

