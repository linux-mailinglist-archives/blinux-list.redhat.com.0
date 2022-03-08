Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DF74D191E
	for <lists+blinux-list@lfdr.de>; Tue,  8 Mar 2022 14:25:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646745903;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Xs8MYjC8Gjs4nH7HeajzeyPMCIMnnY+W/0dqHYwLIGA=;
	b=CLvbs3djRNNDvvUf4kxy0G3fLLF0PXO+1vgetceMechl94xVeqL5QWzuD8Vpsx4hm5u25h
	1Ic2K/pChdv0qGuCLuL9f0aE5LyO5WWQpBaUKYzLXO4cWTqskZDvT8Idxi0veZ/nDzZPSq
	ZJknGBEXzPVLR9pDwCmJd5XHt7ydUN0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-621-xdgekD12Ola_ZJuhISIj6A-1; Tue, 08 Mar 2022 08:24:59 -0500
X-MC-Unique: xdgekD12Ola_ZJuhISIj6A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5870610726A1;
	Tue,  8 Mar 2022 13:24:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4450A14171FF;
	Tue,  8 Mar 2022 13:24:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id BB858196BBA2;
	Tue,  8 Mar 2022 13:24:57 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 8 Mar 2022 08:24:53 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Starting lightdm in text mode
In-Reply-To: <mailman.388.1646745673.111201.blinux-list@redhat.com>
References: <mailman.343.1646741549.111209.blinux-list@redhat.com>
 <mailman.328.1646744428.111206.blinux-list@redhat.com>
 <mailman.388.1646745673.111201.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.332.1646745897.111206.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

likely something with systemd that caused this.  The target type in
systemd can change things and that would be on display.service.  I don't
have much to do with systemd most of the time so forgot some of those
details.


On Tue, 8 Mar 2022, Linux for blind general discussion wrote:

> Hi!
> Can it be something with the  BRLTTY that  might have caused this to happen.
> You might ask on the BRLTTY list.
> /A
>
> > 8 mars 2022 kl. 14:00 skrev Linux for blind general discussion <blinux-list@redhat.com>:
> >
> > No idea...
> >
> > But related question, I do wonder if there's any text mode only display managers. yes I know you can startx aftr login, but I do like how display managers give you the F1-F6 TTY, something I can't, AFAIK and correct me if I'm wrong, get with startx?
> >
> >
> > I'm not sure if downgrading lightdm would solv ethe issue? If you're on Arch grab the downgrade package from the AUR. It may be available in other distros, I honestly dunno if it is or not, and I orget how oyu downgrade packages in Debian/Ubuntu or Fedora and no clue on Slackware stuff
> >
> >
> > On 3/8/22 11:31, Linux for blind general discussion wrote:
> >> Hello,
> >>
> >> I use Debian in command mode. Until about a year ago, when I booted  up, lightdm would start in text mode and ask for user and password. It would then start Mate with Orca. I could use the GUI by pressing Alt+F7. Then it suddenly started setting the screen to not-text mode.
> >> To be able to use the machine in my  primary uses I had to disable lightdm. This meant that I couldn't use Mate. I just switched to Windows for a GUI. How can I configure lightdm to not put the screen in grap;hics mode and to again ask for username and password in text mode where brltty can handle them. Then start the GUI in tty7.
> >>
> >> Thanks,
> >> John
> >>
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
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

