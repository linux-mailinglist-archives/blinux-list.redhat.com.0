Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8176E4972EE
	for <lists+blinux-list@lfdr.de>; Sun, 23 Jan 2022 17:16:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642954560;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vcvfbd/kdwlBnHv9Xpu5/qdF8bApfbf2DUcRoSGokdM=;
	b=AH7AGxVFcIJlU/R2Jj7X1hjiEsKavFZxV53szeFtits2luz3D+upKbqxz8q4HpoGx8VPhk
	T9/PsGMNH7rbVV7pWFoPJC/BDnvBVBqV34fUdxNjDWHVAFD+oWJkAjW5axU7X09jgiPPc3
	TbYiO0UqLUDQwSk7ebYTazWeT9e3/EI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-423-nK_A1N6gMOKcfLkDsz5NBQ-1; Sun, 23 Jan 2022 11:15:56 -0500
X-MC-Unique: nK_A1N6gMOKcfLkDsz5NBQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 501801083F61;
	Sun, 23 Jan 2022 16:15:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 38544798D0;
	Sun, 23 Jan 2022 16:15:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A3FB44BB7C;
	Sun, 23 Jan 2022 16:15:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20NGFouj014836 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 23 Jan 2022 11:15:50 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A1984C0809F; Sun, 23 Jan 2022 16:15:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9D547C0809C
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 16:15:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7E56F28F4864
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 16:15:50 +0000 (UTC)
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com
	[209.85.214.169]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-338-awZylFQiNrm7S0PasamroQ-1; Sun, 23 Jan 2022 11:15:48 -0500
X-MC-Unique: awZylFQiNrm7S0PasamroQ-1
Received: by mail-pl1-f169.google.com with SMTP id d1so13257511plh.10
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 08:15:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=6s+0guWgeYppt96mVB8FeJVDux0+FF8Oqcnm/UdV8Y4=;
	b=BJYUJSokHNFTr6P8iiwaZsNBUtEw9Q6bvlH12maJwaHbbCMK0+AWR5vIcEIaMSkK2l
	lWhbl6mX+7iKeUM7XGmNO6DOSjZK5lNrBCNNanxhjRcDnyxu1QrFN20zzjOTZwsqq6uV
	QRVVr8XkBQQnfO4I95qMVU8GNO7K5sdnxY7rwLQpuEHrXVGulcv/hUXQmJ/f8sNwQ2aG
	M0sF6DjBK/G1CNp/5SXlGMIZcEv7Z+2HC7mf8AI8o9nQU+lU/G9WbmBckbd/bbyOFtHo
	/izksBr5OzN522tu/0p31AM5VAeF8pwQpqkt4fBr/DRNAJNkwjqnBh1mQDwqOXMdrNWX
	3fRg==
X-Gm-Message-State: AOAM530tjgAnEUZlapBuubgYyXCTPHdi5ZWrgLMh0j916h71iW9gKn5L
	04JY+4wrw9qk8fAA8eNYdDstGnwtVuWK3JYlQgFIOtY7kGo=
X-Google-Smtp-Source: ABdhPJzANoDY9ud6KbW9kECsAL3kQbOzqXKzXweFgtwJ1ZYwLR+PejFIIXck1cN/ssYll9kvgybRjikW3/PnFhwaq5k=
X-Received: by 2002:a17:90a:a601:: with SMTP id
	c1mr9445605pjq.43.1642954546824; 
	Sun, 23 Jan 2022 08:15:46 -0800 (PST)
MIME-Version: 1.0
References: <CABKqQvErSiA=YnCNo6MjtANW8LyqW+sQi=o_wPNPc0gTAZE5Pg@mail.gmail.com>
	<alpine.DEB.2.11.2201201340550.1250@debian.work>
	<YelburhFkqY1AXFh@k.n5t.de>
	<PH0PR14MB4296A211C7FDF35750734638C85A9@PH0PR14MB4296.namprd14.prod.outlook.com>
In-Reply-To: <PH0PR14MB4296A211C7FDF35750734638C85A9@PH0PR14MB4296.namprd14.prod.outlook.com>
Date: Sun, 23 Jan 2022 10:15:35 -0600
Message-ID: <CABKqQvHrCWHkm6yoRm828sOJCEU8iMgy7bxE7w3A82j_y9bQUA@mail.gmail.com>
Subject: Re: Running a Linux VM on Windows and making it talk?
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The virtual machine seems to work (someone confirmed that it starts up) but
Orca is missing. Do I try to install Orca on the VM somehow, without
speech, or is there some way to log into the VM from a terminal?

On Thu, Jan 20, 2022 at 11:49 AM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> On my Windows machine I have VMware Workstation, which is free for
> personal use and has a few limitations, like not being able to run more
> than one VM at a time. As far as I know, VMware has rebranded VMware Player
> to VMware Workstation, so there are no longer two different products. This
> doesn't change anything said below, but it might help someone as they're
> looking around for what to download and more information.
>
> --
> Christopher (AKA CJ)
> Chaltain at Outlook
>
> -----Original Message-----
> From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
> Behalf Of Linux for blind general discussion
> Sent: Thursday, January 20, 2022 6:55 AM
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: Running a Linux VM on Windows and making it talk?
>
> On Thu, Jan 20, 2022 at 01:48:58PM +0200, Linux for blind general
> discussion wrote:
> >Once you have it running, you can use control-g to switch the keyboard
> >to the
> >
> >Oh and do not install the enhanced keyboard driver that VMWare offers,
> >apparently it causes big problems with Windows screen readers.
>
> I am also using VMware player and Workstation Pro on Windows 10 for linux
> guests and generaly I am very happy with this kind of setup. I've activated
> the enhanced keyboard drivers from VMware and I can not say that they cause
> problems with NVDA or Jaws, but maybe I just do not notice them :-). What
> kind of problems are this? Do you have any examples?
>
> TBH I do not even know what the enhanced keyboard driver does... If it
> rellay causes problems maybe I should also uninstall it...
>
> >I've not tried running a GUI under VMWare, but I don't expect any issues.
>
> I've done it and its working like it installed on a normal machine.
>
> BTW.: Have you managed  to copy content from the Windows clipboard into a
> console of the linux guest or do you know if this is possible by using just
> the keyboard? Is this what the enhanced keyboard driver is necessary for?
> And is tere a way to copy the content of the clipboard from the Linux
> guest to the Windows host?
>
> In general I am very happy with the setup and running a Linux guest on
> Windows with VMware, but exchanging content between the two systems could
> be easier, especialy for the content stored in the clipboard.
>
> Cheers,
>
>
>   Schoepp
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
>
> https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flistman.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=04%7C01%7C%7C87511c93ccb948318b6308d9dc151286%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637782805323957342%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=%2B%2FoQmwJaXw5Y%2B71S4kVjOP0vfsx1bqDwcrmDYNqI5RU%3D&amp;reserved=0
>
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

