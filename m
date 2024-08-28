Return-Path: <blinux-list+bncBD6J3OOK2IIBBW4WXO3AMGQED4JW2VA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C5C96202C
	for <lists+blinux-list@lfdr.de>; Wed, 28 Aug 2024 09:01:49 +0200 (CEST)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6bf8cef1c5csf78270946d6.2
        for <lists+blinux-list@lfdr.de>; Wed, 28 Aug 2024 00:01:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1724828508; cv=pass;
        d=google.com; s=arc-20240605;
        b=O3twdCM2ah/tYDz0XyBDEYB+xtioltsxEG1U20HAY14k5556P4RVlUp+YwtKEHjgEW
         PgMKNmYib9nPzxJBDYTRgKh25i3JeSUuXqGfwqx9RxMmM5AVDfy6x1iMKhhCc8drYvZr
         zECIjjyAH9KgGGZpFK3D8E9l84pQ8ccyFmZ9W3a4dSMJNfynNDxhuwEzDDs5xKD49TUr
         tvlwK4ETq1F82vTrIOUrpi1xyZd42Y5naFcSYKAWLTvDKE18x83K9Y3zjYvRV6UsorCb
         F2KvnKSF4JZyD9uo0wzTs5+IU7cKqxok4yo3hNjpS3EXvzEMgeZOKohFB8wR4+Y79FCw
         Ochw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:ui-outboundreport:user-agent
         :references:in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to;
        bh=AreuEcdhYIPXHu7O//nnGFWoJ6ONgdu3wvtgF4qOjj0=;
        fh=vLJdZx9EbXymYXGvOwdYxO8QVOkf+prkfF/76xRn7ec=;
        b=XccJuzFClYVenGVO9fGjxcEL5OmPwAx2yLkt0ZEb4im/Vx8kAXF8TwvSgjkxaAAPJj
         OjEuNjcToctlOg/UpfazklVhKSI0iPFqeh3Ezi6viNAYlFE4Uh6wFDI6v1XwIxdBNSvo
         OS25eBpyz31S4ZJU0/HXw5NjBisr8/Wi6eDEXHMiiMYagXbTA1ESTCqDVZVmkWbOzLFf
         55ym1FaisOHSjHEYKp4LpFgUU7sWt4LfjL5kS3uI2m8inzietSQ4jQERUiSc+Kx4/Tfy
         U9Rl//nCEs8bj/DMQJ35kAge12UJ5QjVfwMrnz7uMSONJWhZ11vQbvmJL1s7nvDko/Ga
         mnPA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.17.21 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724828508; x=1725433308;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :ui-outboundreport:user-agent:references:in-reply-to:mime-version
         :date:subject:to:from:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AreuEcdhYIPXHu7O//nnGFWoJ6ONgdu3wvtgF4qOjj0=;
        b=MWxqx6WTHJmDj4FeCvgFaU1khChoEhqBRPGLzEjouHEqFm6m7OHw+3F/IWY2V7CuLw
         v3Hzedol3SWmLFoMW4Co4lMRbxRDeyVTPUfY+mmMva46VWVLxlxALkaLduGIrNN3LfRw
         0OOgMVzIrGrOY5CaMpkuX4ozjhBQS1Vo6jxzRvdGOREaLBuNkb/kYZXqjC8KoozmxOlT
         hUuIV7qOfiHLUa/Er8VaCgBZa2duG8DqplhYhtcWRAiy8sUlSCqfFsmNahgYvmCyrcos
         4Pola5/0w9jw+Z7dqwVBuonZkq7St+nfqNR1NBbDoY1bnP3hImPIz0NXtnjFGP7pm8qX
         QjUQ==
X-Forwarded-Encrypted: i=2; AJvYcCVjaL5KYrFgA89VJ4PNXpBxSpi/msBvj4EdWcg1NEjDNEe8Bz6FV2zsh7J87xX40U2UExxtrQ==@lfdr.de
X-Gm-Message-State: AOJu0YyGzfjLDB9xdFczNlMovGngAuzx9WEZLaSPEazDOVE+vW8xaN18
	FzNFn9EXGmZBMrLupmwqUqiin+phQOJ6VEQu/6tX+qKbEQdNBNVePC+MdVB5qwM=
X-Google-Smtp-Source: AGHT+IEmUlKNXXbrmD/+EMlEB6bGTe5v7EgWwI5VNn811t729rvuCZnKPllwvycFJ2KfJxXntEbKeA==
X-Received: by 2002:a05:6214:4381:b0:6bf:801b:4cd4 with SMTP id 6a1803df08f44-6c16dc79daemr173294506d6.30.1724828508112;
        Wed, 28 Aug 2024 00:01:48 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:c6e:b0:6b7:96a6:c5e9 with SMTP id
 6a1803df08f44-6c161336a90ls97491926d6.0.-pod-prod-01-us; Wed, 28 Aug 2024
 00:01:47 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVWJ6Xg781/XDYNh5FAJiWMhKXA5JpZPslfpR0XLDsfq4REg2OCM62Qw4xQp7gIjJn+ezBcVMr1LvpkAg==@gapps.redhat.com
X-Received: by 2002:a05:6214:4381:b0:6bf:82b2:1337 with SMTP id 6a1803df08f44-6c16dc2de00mr186000026d6.18.1724828507194;
        Wed, 28 Aug 2024 00:01:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1724828507; cv=none;
        d=google.com; s=arc-20160816;
        b=Lv3+UHIJk2F1pwu1T3jR6MBxSjGrEEHZXU0XDh3LIK1SahwVjdINYrVeenv8UeNOAW
         wxAwKcYLE3tyI/8KvlB6CN0g+lPRSEqxIpKM4H18BQnBU1Dye8ABYUEGhg3AvA+alwFo
         OcAU5j8BxySdNxLRnJjAwrBbf1RPmFG/YMK2lwB2Iee10BoJi7eWg/WwRgKZcWV2LlKF
         EJAtmlwKGqDnomnmGnjHJhfRx5lwTYrrEge20zMqKY4YySXIjZSH70rhtVInRlmlEdBo
         PGpZIK8GGy8m9XXFmyVnN6Ke+h0+ftadISu4hfQGjvb6ybVE2ZfsZNgoQSgAZvy0EPUl
         HMFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:ui-outboundreport:user-agent:references
         :in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to;
        bh=DaaVM77I0hpy+lxy0ibHCX9x//+52eEVOA8Pk+jEjgE=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=tGSEdfZx9vdeC9HIfVBkZgEdJSx8jTfT9y7rSJb+WO8rhyEypX8s973uGkFqCbdy/c
         iyRzGJM5GD60oRA+cE8qYEV+Aluosr6FsYDTNII7lFNdaJOWGBHO92W31Exy/XRjbXNG
         SfAM2ZWQWdRzOl4VhaVnGvYAzBuGy7uGEPjc/yczqVKWaqby27qz4pqLIFwj0Sm6M4PP
         d5zV14Wu8TO+cSxdFerotz2WUCNGL6s06eT+f8oA5PR5I3d3aGwGFbLiy+VBddKxtdOl
         Jl2i9di2LU1Ic648WcX6G2FkXl8zOm32+RZUb7pN2cABJJBoreHN07/L1EzR8/QaH0/y
         jAew==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.17.21 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6c162d31681si150538186d6.79.2024.08.28.00.01.47
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 00:01:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.17.21 as permitted sender) client-ip=212.227.17.21;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-663-q_Y-8bdlPoqbUBNGxkYsDg-1; Wed,
 28 Aug 2024 03:01:45 -0400
X-MC-Unique: q_Y-8bdlPoqbUBNGxkYsDg-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 07BF019560AD
	for <blinux-list@gapps.redhat.com>; Wed, 28 Aug 2024 07:01:45 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 01E511956048; Wed, 28 Aug 2024 07:01:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F353419560A3
	for <blinux-list@redhat.com>; Wed, 28 Aug 2024 07:01:44 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8BAFD1955D4F
	for <blinux-list@redhat.com>; Wed, 28 Aug 2024 07:01:44 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-636-Z_mx0ecdPqSLRXIwui8o0A-1; Wed,
 28 Aug 2024 03:01:42 -0400
X-MC-Unique: Z_mx0ecdPqSLRXIwui8o0A-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.100] ([208.107.97.40]) by mail.gmx.net (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MTzb8-1sZokY3S4I-00TWoz for
 <blinux-list@redhat.com>; Wed, 28 Aug 2024 09:01:41 +0200
Message-ID: <20240828.070140.810.31@[192.168.1.100]>
From: "'Rob Hudson' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: blinux-list@redhat.com
Subject: Re: Grants for developing accessible software
Date: Wed, 28 Aug 2024 02:01:40 -0500
MIME-Version: 1.0
In-Reply-To: <a306ab00-7f97-0859-5fd2-2f2a27cd289f@csir.co.za>
References: <20240826195903.wwlxwqjipjjxnc7k@sprite>
	<Pine.LNX.4.64.2408271546030.321099@users.shellworld.net>
	<a306ab00-7f97-0859-5fd2-2f2a27cd289f@csir.co.za>
User-Agent: POP Peeper Pro (5.5.3.0)
X-Provags-ID: V03:K1:G0G7JgDNNw+5/kFz80MWLRdsgCrwCGrIj0vKECKRfxCDmJ4v93+
 oX+eAZc/fNEtIPuBVeH6sWX9DvTWbkqsd/xlAWrwl50LJLDBxtc8vmg56HiguPX4RoZVhEW
 bpovvM5VkfIoFk6vlDfydcFTKhgwzTpIRGL5gUs95OSE6XK2RiABjp09h4Pe1GhmU9wJBvz
 tWh/qN2Sot5a7eEYaFMuA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:FmtaeXCKf20=;tx4rwewdWFC5AD9aT3O3JBEeQqE
 /hEw0+W2xIaW8yLojhxMH1UPBF+99CqEoJKkj3oJ3GUUHwdOMhRW/3XNHwF8POHgsfs8M3CNz
 Rz6fJBfbNiL/gyvQgZ2xYVWt6cadIZESVOLSG/b/hLvZZ6IYNih8mTikp2v8MQvqgNq8PEgsG
 AgE6EukOqEbJ6E1hxYM/dWYdvpGrspMH5O0fOQHsiCdwhTvIe5802776FRdDtSWNmuD1VLSVI
 eftfAQLV9XS4taIiy2El1NbonesadKLjtNTksM4hssuwpRe7x2yZnOw0nfp3dmN6KuDcg/kpX
 u8lYmC5fAwAPaYlmuey3ZuI7IGS+w3nJp6z86IEtuE13BEtu4UBwA4GksNRMqcPfl/5F3g/+I
 5Prq+nzWK/kPKE6J53F2ZRNXtWyPZWDR0YXyEsXs1qdRs41WGeyaXf6bw+CTesrKAeSwNgNIv
 D5KrlzgmIiW4zmKy292RiJXPTjpI1A3xyKP9Jmxpy+WN98frbKBUstJqBpGPiiKw4K6Ic4oZY
 Uy0ktCmuEuACa2TN1b/CUXQ5qIGnmsWjJJyLhRsuJOXAESxOjyBd0u6hYhIGW3ZmrS0QesoUm
 JTXD1+cqGDfzy7V/QljH+qWIz+sSMB4tnPxTwd5I4UK35LUqQligqjYexR2o2JSSmKjUcu5q7
 7m+gg0rcoLNDPLtpbDzblYxhmT1MVbVE9AAeSZqKcii1bfyFPV9ydtF8hiS9p/fm5xCk7KlJy
 L1RUoxnZLnO/s4kI/KKK/FMxTAOFPKmEVWzCoDvTo3l+WvPoqf80eYtUicNMV1rAY+zzAxuBH
 q+jcQd2PckhT+D8Rg5d1kWGw==
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rob_hudson_3182@gmx.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rob_hudson_3182@gmx.com designates 212.227.17.21 as permitted
 sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Original-From: "Rob Hudson" <rob_hudson_3182@gmx.com>
Reply-To: "Rob Hudson" <rob_hudson_3182@gmx.com>
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

Weren't you the one who also did that alsamixer alternative? Is that still around and working?

----- Original Message -----
From: Willem van der Walt <wvdwalt@csir.co.za>
To: Karen Lewellen <klewellen@shellworld.net>
Cc: Joel Roth <joelz@pobox.com>, blinux-list@redhat.com
Date: Wed, 28 Aug 2024 08:57:24 +0200 (SAST)
Subject: Re: Grants for developing accessible software

> Hi Karen,
> nama and dae runs in the console terminal, but remember, your remote shell
> is on a machine physically removed from you so you will not hear the
> sound.
> Dae is an audio editer which I wrote years ago.
> It does not edit compressed file formats like mp3 or ogg.
> Regards, Willem
>
> On Tue, 27 Aug 2024, Karen Lewellen wrote:
>
> > Warning! This message was sent from outside your organization and we were
> > unable to verify the sender.
> >
> > Hi Joel,
> > While I personally have no physical Linux system, not finding a path to
> > either a synthesizer or screen reader that works for me, I am interested in
> > the work you are doing.
> > I imagine it would be possible to access the software via a Linux shell,
> > using my existing screen reader tools, much as I am doing right now.
> > There are certainly grant prospects,  as well as  your drawing resources via
> > traditional fundraising.
> > May I ask where you are located before directing you to options?
> > I dare say, much with other command line things in Linux, you will find
> > interested folks who may not experience sight loss.
> > I should add that Audacity, at least when I last tried it  was fine in the
> > Mac environment too.
> > Best,
> > Karen
> >
> >
> >
> > On Mon, 26 Aug 2024, Joel Roth wrote:
> >
> >> Hello List,
> >>
> >> Over the years I've posted a few times about Nama, a
> >> terminal-based multitrack digital audio workstation.
> >>
> >> As I understand it, Audacity, one of the most popular
> >> GUI-based free software audio applications, is accessible to
> >> blind users on Windows, but lacking accessibility on Linux.
> >>
> >> Nama runs on Linux, doesn't require X11, and is accessible
> >> without working through a GUI layer. So, it's a much smaller
> >> software stack.
> >>
> >> I've reached a point where I'd like to bring other resources
> >> into the project. I'm wondering if you're aware of sources
> >> for grants for developing accessible software or
> >> organizations that would be interested in supporting such
> >> projects.
> >>
> >> I'll appreciate any suggestions.
> >>
> >> with my regards
> >>
> >> Joel, Nama author
> >>
> >>
> >>
> >> --
> >> Joel Roth
> >>
> >> To unsubscribe from this group and stop receiving emails from it, send an
> >> email to blinux-list+unsubscribe@redhat.com.
> >>
> >>
> >
> >
>
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

