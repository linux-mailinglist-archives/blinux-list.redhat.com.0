Return-Path: <blinux-list+bncBDX2X74ZZAFBBM632W2AMGQENLYER3I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C389931A71
	for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 20:43:00 +0200 (CEST)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-447d782a8f6sf57631cf.1
        for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 11:43:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1721068979; cv=pass;
        d=google.com; s=arc-20160816;
        b=JKoKOUfSGspUZLOjqdjEt9kUnMcoWsrEn/8mizBOLAme9yYUQiXF91rUfVj6tA3QeO
         zGxyap0gi80F8eNiuwsem63OYgquIt3rIubnMb/M7dwSUeHeMHXpAi5ZiEJH7zkoRC6G
         Dg8s6Gh4P/omkJrxkOfsMZjnFWZWHtE5W1392FBJDWtQlvOSSlI/a+UOdSZDTj4OP7Al
         L+d7T3NUOPM4QtxNktiAgk8zPKuKNaqyzNuqJ9QdUSd77J8YjS8C7pEI0FCpY9XoFLPS
         zLKBKaJ8ZALJ+g7wD43A8MQM8JlSyooDbTkSsFDbIZgkJb1RrCp4CTiEZCVAiqwlkuAp
         +NGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=ZoTgSr8+mCrzXSGJxjLL0qx4RT8PixcYiueUaYyVv+4=;
        fh=aW3hO86ZK9wOHecZQV+QS14dkdjRXRgSNfXH5el0VqI=;
        b=X1lTLJzrjObVxqIpZiUBxkyc/HE6frnTM+zD9cqi1IY85/JbMjeU3dTem+x3dJFdz3
         51h1Vu+lmJaisYaRCJO91FEmapH2hF5diLDY7Ti8AAJL/sxYXjdAfWmZPWXYUTMSMDIe
         iti1ExdTLuK5SkEIEUqGr3zf5lpXvd9DwsucjM4Z9qS2EixgnJUE8u1MmPzxl3x+GYLb
         xfqLer4s3ILr+glo+EaImLwucLCk9LcXhnqJrnexpUbL28pKHlYB4WLZxSXWSqZHH2cn
         k4mjGHsyk09l8f7J8Ayr/nexR2Wz0s/8D+zCfyROM1neP9aJvs0ebLm01F3GD8deAT/e
         FoNQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of mike@straddlethebox.org designates 104.237.138.165 as permitted sender) smtp.mailfrom=mike@straddlethebox.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721068979; x=1721673779;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZoTgSr8+mCrzXSGJxjLL0qx4RT8PixcYiueUaYyVv+4=;
        b=L6yl26kALwKi3Xyg5zLXhWDYRYhmZU/W83OhIXHwoIpOMjSOWME7sqvpbhSOhZnuhq
         QbkFM+wJiPoSAwRhxr84Z6zzhAEv/EHfppj3YYUZR89//S1MF2S3BzYPtb3kP66TpkGz
         hx2dkK1mS6Y4lRgU+vELm71lnSYOSElQhQ8GxKn4+K3PKOuH8Wxxe3neMp8anFfPp/x0
         GPrLhQyaprA9yrF8fo5quCHeMZ3vgf1KTn2nZhST1TpUIi0DnJPotInkLtM82+2LjlZn
         hEgBYdWtqwAZ1qkDeisGd7UKDZjl8JnUrFciHfojjl7C34Fz0vt0DMt/n7r7jgbLIVKk
         u2sw==
X-Forwarded-Encrypted: i=2; AJvYcCXCQ+W+as56ICEMs3ZbCxvjjxaCL+1wIe2UGMr3vPF5dyIu8jya+CQZh6QgMqlMSL64u8N1uWUPw5uBES5QbfQuKQumCdl2gwL0
X-Gm-Message-State: AOJu0YxTtd9enYgabDaq5jHfDwajOrbs1NjYZ+y+V70NOjsaDa/ASQUU
	zkQ15OuPzRJq4QrA6VeYzn3OzKY1oB7doYWTvH/kPvTcB6+nTHHUiIj+7/dU3sg=
X-Google-Smtp-Source: AGHT+IEL6PXmlBpaRHxIByfQiHOg/z3ipYPfMAaqCu/uYa98+XbHYlxynMz1lD874YMjveJmowa8Sw==
X-Received: by 2002:a05:622a:4a0e:b0:447:d81a:9320 with SMTP id d75a77b69052e-44f7a7516eamr378231cf.20.1721068979324;
        Mon, 15 Jul 2024 11:42:59 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7183:0:b0:447:ca9a:34f2 with SMTP id d75a77b69052e-44d0839134als61608271cf.2.-pod-prod-05-us;
 Mon, 15 Jul 2024 11:42:58 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVglJ8MlQY6X1/eHDrFgpIFvb/Pb0SkOelgeKDbgO8V0Pqb56xNIgA23EjX5Re5vwkvCOJ7+ObqDlqadWsrfku6u0aHC30N2taGTMCJ
X-Received: by 2002:a05:622a:288:b0:440:6345:257f with SMTP id d75a77b69052e-44f7ad1a21fmr610731cf.60.1721068978513;
        Mon, 15 Jul 2024 11:42:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1721068978; cv=none;
        d=google.com; s=arc-20160816;
        b=h6J0wzNh8yuKHtsdaqk7esPKY8dP6cqmVvacHUvSivFbae30apt5U6i4BYSeBc44fR
         zrKWgEvSXvRWXjcyJ2xLq5mZrF+KhKZuHh9zbE1+u0/C0i7QTvxZIUo41XAlB6BUPc2K
         6XgLHiklMKZwDgsOCNiEVPebR+279sY/XgrffS3CFje8C5TWAIMQ84mFCe9rz/0ldKPx
         YpKjRtM5TGr6zduxc4Bg7JT8JTGb28ZgTC1f55tFmkaCl1q3O/zVpwEpBzqN+la0Fx55
         Gn33yPfaE7pmsUykxsxndQ7VMEELZ+TWSAYTsVbNKNuOw+bTVPiqlyGGAvgfGkFCjMBu
         CsHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=bvGHHc38aF4Tlt7EnSE06GEu1tWujfirzgJIqqr6ASg=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=fVByU84dT0bIclDI9NN7RKEmmmNcOl7lTV2qTpYy6L0edKZ0sXCmuv0Bk2iayqp2Nk
         ZxJkI35V7XVtGTNmjgC+NCrrptyqp4DM0k4gmNWSOS10kqXAp3GUBMQBMK+NiSLrpRtF
         Dd9HtT62VthNo8FH5vpRR2CvIf/S80IeATNfEfszZngJAcqDxvM/35CI9/21ml5tL79Z
         1olzbTLXfYBHQS1eksUJjd2Ws2nU322cgtPcERF39RAM+CFkJ/TyVYgvmzaCOEl9VxOT
         w//gFYNLKFZpMhKp1VDq9+bHglBKT/p3KNHGFEPiAQr7qlN5gnsLHHLHLPpJ+fEGnjwO
         JGbw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of mike@straddlethebox.org designates 104.237.138.165 as permitted sender) smtp.mailfrom=mike@straddlethebox.org
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-44f5b81a99fsi58254171cf.621.2024.07.15.11.42.58
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 11:42:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of mike@straddlethebox.org designates 104.237.138.165 as permitted sender) client-ip=104.237.138.165;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-298-VDji69BVMVOnWYiI3aY0ow-1; Mon,
 15 Jul 2024 14:42:56 -0400
X-MC-Unique: VDji69BVMVOnWYiI3aY0ow-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0AAA019560B6
	for <blinux-list@gapps.redhat.com>; Mon, 15 Jul 2024 18:42:56 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id EF7B71955F65; Mon, 15 Jul 2024 18:42:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id ED01219560AE
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 18:42:55 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6EC8D1955D47
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 18:42:55 +0000 (UTC)
Received: from straddlethebox.org (straddlethebox.org [104.237.138.165]) by
 relay.mimecast.com with ESMTP id us-mta-686-tYaLytznPdWJxpOgQd9ITg-1; Mon,
 15 Jul 2024 14:42:52 -0400
X-MC-Unique: tYaLytznPdWJxpOgQd9ITg-1
Received: by straddlethebox.org (Postfix, from userid 1000)
	id 9A5641FA67; Mon, 15 Jul 2024 13:33:08 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by straddlethebox.org (Postfix) with ESMTP id 99D6E1F65C;
	Mon, 15 Jul 2024 13:33:08 -0500 (CDT)
Date: Mon, 15 Jul 2024 13:33:08 -0500 (CDT)
From: "'Mike Gorse' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: Karen Lewellen <klewellen@shellworld.net>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: how many Linux machines do you run?
In-Reply-To: <Pine.LNX.4.64.2407151356560.3547821@users.shellworld.net>
Message-ID: <f3eee8ac-4e0b-fcd6-52dd-9aca74743226@straddlethebox.org>
References: <Pine.LNX.4.64.2407142337570.3536958@users.shellworld.net> <71972198-e2e4-9aa4-ffa2-242ad9e066cf@hubert-humphrey.com> <Pine.LNX.4.64.2407151356560.3547821@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: straddlethebox.org
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: mike@straddlethebox.org
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of mike@straddlethebox.org designates 104.237.138.165 as permitted
 sender) smtp.mailfrom=mike@straddlethebox.org
X-Original-From: Mike Gorse <mike@straddlethebox.org>
Reply-To: Mike Gorse <mike@straddlethebox.org>
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

If the server is running an RPM-based distribution, then rpm -qa, but it 
will likely print out a list of thousands of packages (if I run that 
command, then I'm usually looking for something specific and pipe the 
output through grep).


On Mon, 15 Jul 2024, Karen Lewellen wrote:

> Thanks  for these details.
> For the sake of further exploration, is there a Linux command that will share 
> all the packages currently in use on a server?
> I have entirely too many things I do professionally with my email, including 
> filtering  items into folders to use anything like fastmail.
> I do currently ssh into other shells as I said, but must visit shellworld 
> first to do this much.
> Still, if creating shellworld 2 might be possible even on a dedicated 
> machine, it might be worth exploring.
> I have 54 gig of data in my main shellworld account alone, 6 gig for my 
> personal website..cannot imagine another shared hosting service giving me 
> that kind of room, but might be wrong.
> Kare
>
>
>
> On Mon, 15 Jul 2024, Chime Hart wrote:
>
>>  Well Karen-and-All, Many of you are quite familliar with my road. I came
>>  kicking-and-screaming from DOS2windows, slowly in 2003 Linux, but with
>>  horrible DeC PC drivers in Speakup. Eventually in 2006 got rid of windows
>>  all2gether. All along since 1995 I had Unix shell-accounts, Netcom, REXX,
>>  PrimeNet, and Shellworld, where I hosted my web-site as well. In May of
>>  2020 we almost lost Shellworld forever, so after at least 3 days of no
>>  e-mail, with a big help of a dear friend, I switched my domain to
>>  Fastmail. Unfortunately their interface does not work in a console setup
>>  nor without javascript. After awhile they blocked traditional ftp access.
>>  I found ncftp as an easiest client, but now must use web-dav which has
>>  many fewer options. As far as your exact question, as you see I am not
>>  hosting my web-site nor e-mail locally, however, we use exim4 to grab mail
>>  from FastMail to my local machine. In addition, I have a laptop also
>>  running Debian SID with a quite new Zabbly kernel. The laptop has
>>  graphical so I can login to hotels when we travel. Eventually would like
>>  to put graphical on my main machine so I can go to Zoom meetings. Wish
>>  there were either a menu-driven or commandline Zoom client. Along the way,
>>  while I've been in Linux nearly 21years, I almost still feel like a
>>  beginner, but still sometimes when I atten a Linux LUG, I can still help
>>  some1 else. Also, certainly folks there are still somewhat baffled how I
>>  use a computer while totally blind.
>>  I also have a MAC which I know little about, but took a class. I have a
>>  Chromebook, but the Chromevox screen-reaeer is much less easty to use than
>>  something like Speakup. I hope those details will provide some
>>  prospective.
>>  Chime
>> 
>> 
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

