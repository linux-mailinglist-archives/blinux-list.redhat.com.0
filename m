Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E944C5C7F
	for <lists+blinux-list@lfdr.de>; Sun, 27 Feb 2022 16:11:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645974715;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=b24FZfJcFSYTaYSglZMfdsQMIHyTkzzm4zYyLZ1q2Mg=;
	b=b7On29PS1aQoulstm5NUIrLRwYl2RAB3ADzMniAmLFyrFW1Oq8xBVh9fGMgqvlzouS1va9
	28B4K+gMBi3NGPjBMJ4O4R2dPkCDQkklAyPpMO0SIs08SOk0TEiR/FxzHZvClzLAURFgxD
	jvowr2Tb6Dw7LiX1BxRC/Gk+Bl6ygx0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-600-6JdDuwRiMZ-QVYS_-JdDBQ-1; Sun, 27 Feb 2022 10:11:53 -0500
X-MC-Unique: 6JdDuwRiMZ-QVYS_-JdDBQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D443F8145FE;
	Sun, 27 Feb 2022 15:11:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B555783780;
	Sun, 27 Feb 2022 15:11:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 177EA1809CB2;
	Sun, 27 Feb 2022 15:11:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21RFBRx0020487 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 27 Feb 2022 10:11:27 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 22911401E38; Sun, 27 Feb 2022 15:11:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1E533492C14
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 15:11:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 046BE801E95
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 15:11:27 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
	[209.85.221.51]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-641-UGnfz3oaP_meToIws2XG9Q-1; Sun, 27 Feb 2022 10:11:25 -0500
X-MC-Unique: UGnfz3oaP_meToIws2XG9Q-1
Received: by mail-wr1-f51.google.com with SMTP id d28so11735661wra.4
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 07:11:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to;
	bh=weunqesAEFya0ypwmTzA8inSUo7QcpGm353/eZDmVc0=;
	b=vUdfH+ZEmAvicaE+q5cDx6DqQTbvQgeCFunmpAqxfbFM4SkzzoI+6+1hBF28a2aKew
	6Y/JfHOmEeWEYozD+nKXGA+Q5SDesR1jjufFG8vun16P6TM2ID6DEuu17mG0ehvwyoso
	lRSr1mJ56LNbv/+TBTCNlDeIBgGvQ9zy3pHbDrHZHo4D7WLw26f/iwJVsFr8/HkuDmIJ
	GHqri/ixkeYGaFBBMFLmAymfpo0Apx7Yi5ajOUmeavUcQBQTOKSPFEU0V7kHpL9aYNhm
	4gCX4Pj3mbhHzsW94M1a9Eg+J0ORn9dY5pvPOzDyrlyg13DUWHab4POOsBZ+qJ1ykmUt
	kBfg==
X-Gm-Message-State: AOAM530xcBPYBhzq1VQvB7+CO04Uerd3lQ+8K8wR0/JJhnJIl0ruZ52l
	HjkBV/hhyTThvwfcBligCAAHIM9GoP1HoQ==
X-Google-Smtp-Source: ABdhPJzEFLEmrwmcEBL2SpJeHZQix4EvpR/wnef2nP+cN8Xi2dDbjq49CJH+jiEckNnCm3NkmGyTiA==
X-Received: by 2002:a5d:6acd:0:b0:1ef:78e9:193a with SMTP id
	u13-20020a5d6acd000000b001ef78e9193amr7412772wrw.281.1645974683546;
	Sun, 27 Feb 2022 07:11:23 -0800 (PST)
Received: from waffles ([90.250.160.235]) by smtp.gmail.com with ESMTPSA id
	l6-20020adfa386000000b001ede14dcd74sm7923221wrb.104.2022.02.27.07.11.22
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sun, 27 Feb 2022 07:11:22 -0800 (PST)
Date: Sun, 27 Feb 2022 15:11:35 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Testing Linux distros
Message-ID: <YhuUp/GLVOQ4ujsC@waffles>
References: <6236d693-6b68-d164-9484-30e73574a4cb@gmail.com>
	<9a599fc5-a62-f1ed-94d2-a475ad65bd4d@panix.com>
	<8bd3c4a1-d001-3434-ce82-04967ad63c38@gmail.com>
	<9688392-e67a-60bc-1c21-e9b3bdf9abb5@panix.com>
	<318ce7ec-912b-985e-9fc2-fac2a8b399b@darkstar.example.slint>
MIME-Version: 1.0
In-Reply-To: <318ce7ec-912b-985e-9fc2-fac2a8b399b@darkstar.example.slint>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, Feb 27, 2022 at 02:08:03PM +0200, Linux for blind general discussion wrote:
> It is actually a pocket drive, in other words, it came in a case and doesn't
> require external power like many other drives do.
> 
> I have no idea who made the thing, but it works, and that's really all I
> give a crap about anyway.
> 
> Warm regards,
> 
> Brandt Steenkamp
> 
> Sent from the Slint console using Alpine
> 
> On Sun, 27 Feb 2022, Linux for blind general discussion wrote:
> 
> > Date: Sun, 27 Feb 2022 06:26:43 -0500
> > From: Linux for blind general discussion <blinux-list@redhat.com>
> > To: Linux for blind general discussion <blinux-list@redhat.com>
> > Subject: Re: Testing Linux distros
> > 
> > What you ought to do if you haven't done it already is buy an external
> > drive case for that kind of drive and put the drive in that case.
> > You can use the drive from inside the case connected to your computer and
> > the drive will have more protection that way.
> > 
> > 
> > On Sun, 27 Feb 2022, Linux for blind general discussion wrote:
> > 
> > > I have a 1 tb external USB3 drive which I will use then. Unfortunately it's
> > > not an SSD, but what can you do?
> > > 
> > > 
> > > Warm regards,
> > > 
> > > Brandt Steenkamp
> > > 
> > > Sent using Thunderbird from the Slint machine
> > > 
> > > On 2022/02/26 23:51, Linux for blind general discussion wrote:
> > > > A guess, you're not using an extractable ssd on that machine.  If correct,
> > > > can the machine boot off an external drive in a USB port?  If not, you're
> > > > left with kemu and the like.  If yes, and you can get a external ssd drive
> > > > with usb connection put the testing system on that drive and replace it
> > > > there as needed.  That keeps your main drive separate and you can use that
> > > > for normal work.  External drive holders for the older type of drives like
> > > > ide and sasi and scsi are also on the market though you'd need to get an
> > > > extra drive or two for the holder.
> > > > 
> > > > 
> > > > 
> > > > On Sat, 26 Feb 2022, Linux for blind general discussion wrote:
> > > > 
> > > > > Hi all,
> > > > > 
> > > > > 
> > > > > I am tired of having to reinstall my distro of choice every time I get fed
> > > > > up
> > > > > of testing one distro or another.
> > > > > 
> > > > > 
> > > > > How would you go about testing if, like me, you only have the one Linux
> > > > > capable machine? Yes, I know you can technically run some distros on the M1
> > > > > MacBook, but, just, no thanks.
> > > > > 
> > > > > 
> > > > > I really, for one, don't like the VMware thing, and virtualbox is a pain.
> > > > > 
>te to the party, but may I suggest on Linux at leastt, Qemu for testing
>distros?

It's easy to set up and quickemu covers a good chunk of popular distros
and makes it easy to set up a VM and go without fighting with a
horrifically bad UI> > > > 
> > > > > I'm thinking qemu with virtManager, but would like some input. This is how
> > > > > I
> > > > > run, only when really necessary, mind you, my production Windows.
> > > > > Unfortunately I need it to do my work, so cannot kill the thing.
> > > > > 
> > > > > 
> > > > _______________________________________________
> > > > Blinux-list mailing list
> > > > Blinux-list@redhat.com
> > > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > > > 
> > > 
> > > _______________________________________________
> > > Blinux-list mailing list
> > > Blinux-list@redhat.com
> > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > > 
> > > 
> > 
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> > 
> > 
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

