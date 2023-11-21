Return-Path: <blinux-list+bncBCCIDSOV5UGBBB4U6SVAMGQEYM3GKFY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mail.lfdr.de (Postfix) with ESMTPS id BE7F57F36EF
	for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 20:50:33 +0100 (CET)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-6cd0a9b5a90sf6961956a34.0
        for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 11:50:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1700596232; cv=pass;
        d=google.com; s=arc-20160816;
        b=eh7UYc3wfbyun1nc31IJ/ZA2U3I3ktJFYL/QbJZ6oE9X9oGXTtf+aLXdStXKopJ1I0
         ZsW+z8ri3pWL9HC8PadQjXmZQp++4rV2jM73VkYl+ZtbMN/tZ/N+aI8wTQAg5rBz/IUy
         xuV7j9eLREwcW3NZ8PNJM/ZeXy+jEQhozYmfLaTVRYd5KLHf0qoadDeGFr677L6TGfX1
         J9i9wWdTOVY6DzEJb7Ll3pYJumUCpVDcz9x39jeZeCeSFftvTVGmFmOed6i9VOTc+tkn
         LthF5ZU2E9dDJN3fGYnZ5cTEMzZKVVBuq/Oza/UDLBo4C0Gs0kSItaH+Xz4/QDAzQo+A
         10Rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:reply-to:message-id:subject:to:from:date
         :delivered-to;
        bh=Pz76rOYPRzxD+26ZO46ysxWYbazs94+5J9lgxoBjGdM=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=AqMsv7II+S/ZuuXrpKEM0i3pJt1PbK+d2Ricpj6Atrz68hqCK6x4Vm/QzTX76dMKsV
         eOAbQhfneJFL9fWaYTTjHnECcUM8SIVRK2xB+bC/YLHEEe2DdiLydIKBNP8fJS+vt99X
         3IorPESdM2cN6y4vDDnXrUskToHaQXpRm3C7mIgdfeeHyICBW6sTzTVivXXJAhO4W+nv
         Ot9187VJs+0u++7vtLkP79XEx0/GcdVWkvwoYpfEl3J0XadSRKk5+hGP3jOa010SMa+B
         iTFoUsVpz1YvmXsIZxmKDqjoN7iv9M5n+Ztc13Z+Y3vC1ODeVILCzcnpLNDRkxjVKveq
         2hyA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of joelz@pobox.com designates 173.228.157.53 as permitted sender) smtp.mailfrom=joelz@pobox.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700596232; x=1701201032;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:reply-to
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Pz76rOYPRzxD+26ZO46ysxWYbazs94+5J9lgxoBjGdM=;
        b=D9S6EAR5WqYYOGg/GkPJnupj+Xsm9j1Xe+eOHIZI+d+vmRU0KXTCNMgUATzkiDPL4l
         Ra5zTt8CMf0jAHI+uHxLcrvGrsFekv0jao67AWa6F2GajHWzw1QApl5fM7tl23P4gYP3
         NN2u+tJC4CzUfGKyHlbSc2VB38XYbiNjkq2IU/k4RBpxke9o/IDDsebHgojSpfYBdMPE
         qhVawP7NjOqnqmrHwOTudqKk3uGKpIrGy6eGtTVAgLmdlnhhbXM7/BtvAfHCen16OqlU
         fHyBNOA3RBl/BThWOfuZsDHKuCw+sJLigmu322mhwB8j4YYajpQ9+Pf7EP7TYtVfyqNx
         bfsg==
X-Gm-Message-State: AOJu0Yx88+xdDPglyr3LbPqCiiesiTjd8v/m9nvf6CiWewZpSXr960Qv
	lBboBDwDMWXifIlSSff8a5rLpw==
X-Google-Smtp-Source: AGHT+IExwrk8L3ZEhpupY7gMUhNgE1DjxvdLua/UesAe2+iX5SqLfuH8WBNczf8ojNn8NWGeNav4Iw==
X-Received: by 2002:a05:6870:4c14:b0:1c5:56f:ac08 with SMTP id pk20-20020a0568704c1400b001c5056fac08mr379760oab.12.1700596232107;
        Tue, 21 Nov 2023 11:50:32 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6870:8997:b0:1f5:bf3a:361b with SMTP id
 f23-20020a056870899700b001f5bf3a361bls976798oaq.2.-pod-prod-09-us; Tue, 21
 Nov 2023 11:50:31 -0800 (PST)
X-Received: by 2002:a05:6870:280a:b0:1ef:cedd:5c32 with SMTP id gz10-20020a056870280a00b001efcedd5c32mr400327oab.3.1700596231412;
        Tue, 21 Nov 2023 11:50:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700596231; cv=none;
        d=google.com; s=arc-20160816;
        b=sZvi6SBjiNJ/Zuzfu/MCLqLjITS0UcVpFG4Mh9W69Zk1IidUmYjhaKm9Rs6zo9k6lP
         TBlAtVfu6mV3s91d7eqSVLOL/k9swJ37BcpovtH69kTDVI5v3n3sBrbz3OT7RkC21E3J
         92+HXi2uy7mYb5MXuZ05P3XOBudqUs8mhgmc9D0FFAfJkv0yfhQxerGVEZwFsLUYMBhz
         p56UOkM1mDAdZtVr2bFPCzrAMbG9xynSIS+tdtSwtNxtCDO5lcX23RJC4hmtITk9wu3M
         ZRK0dlp+c5nuP2DBMJ7PB5BKK7upVcCzaKlCmGKCBE5EdAEOT1MDlAcXEqpRdlM3aNs7
         e5aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:reply-to
         :message-id:subject:to:from:date:delivered-to;
        bh=chuD+0o38XSH6jsqLhb7DN9ZMcvxwcOflqWmoNtMthc=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=Tjw1kj3jHvAeuysgmYRRIOPXXF3tVvR0zFftUqWbbCr28ZJKcmWfGxCBruXNdsSAfz
         6RkAojZzZPGl3JXeOjh1o+9WylrCa4Ovql6P6GM2PORPTr4MDrdFLKsj9YNLw6iaaIuE
         R/fen06rKjsUEyVlR3aUZmfOPMYsQCG45NSX6w6NyLInG0YsibAAiSQiA3gnAGSzZmNX
         hE0pzH/wjQxPl6BGA/lFp40WOFBncuudw+eEPxaZ9NQNgPQSPkclhejgse00WZEXfSPJ
         JKqD9eUDPR6omTkxaoW1HIzjBP/JL8SowOAq/1bc+26LAPYJhKRGm6nqNuqtBCuTobye
         fntg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of joelz@pobox.com designates 173.228.157.53 as permitted sender) smtp.mailfrom=joelz@pobox.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id j9-20020ac85c49000000b00421b954a923si9734785qtj.556.2023.11.21.11.50.31
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Nov 2023 11:50:31 -0800 (PST)
Received-SPF: pass (google.com: domain of joelz@pobox.com designates 173.228.157.53 as permitted sender) client-ip=173.228.157.53;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-694-zwE2HSOyN_Ke60a3VdQZeA-1; Tue,
 21 Nov 2023 14:50:30 -0500
X-MC-Unique: zwE2HSOyN_Ke60a3VdQZeA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E269F3C0278A
	for <blinux-list@gapps.redhat.com>; Tue, 21 Nov 2023 19:50:29 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id DF5521121308; Tue, 21 Nov 2023 19:50:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D73381121306
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 19:50:29 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B296E38130AD
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 19:50:29 +0000 (UTC)
Received: from pb-smtp21.pobox.com (pb-smtp21.pobox.com [173.228.157.53]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-163-kc-SvWR2MuiLYKSZ-o6SPA-1; Tue, 21 Nov 2023 14:50:27 -0500
X-MC-Unique: kc-SvWR2MuiLYKSZ-o6SPA-1
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
	by pb-smtp21.pobox.com (Postfix) with ESMTP id 1245C2EC08
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 14:44:59 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
	by pb-smtp21.pobox.com (Postfix) with ESMTP id 0B9D82EC07
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 14:44:59 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from sprite (unknown [111.239.165.192])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp21.pobox.com (Postfix) with ESMTPSA id D878B2EC05
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 14:44:55 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from jroth by sprite with local (Exim 4.96)
	(envelope-from <joelz@pobox.com>)
	id 1r5Wg0-0005gR-1v
	for blinux-list@redhat.com;
	Tue, 21 Nov 2023 09:44:52 -1000
Date: Tue, 21 Nov 2023 09:44:52 -1000
From: Joel Roth <joelz@pobox.com>
To: blinux-list@redhat.com
Subject: Re: Regex for spaces
Message-ID: <20231121194452.ux4ikae66aksv4rn@sprite>
Reply-To: Joel Roth <joelz@pobox.com>
References: <20231121.153445.633.1@[192.168.1.100]>
 <20231121182732.f675f7aqswegm7xr@sprite>
MIME-Version: 1.0
In-Reply-To: <20231121182732.f675f7aqswegm7xr@sprite>
X-Pobox-Relay-ID: 725224CA-88A6-11EE-AEF3-A19503B9AAD1-04347428!pb-smtp21.pobox.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: pobox.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: joelz@pobox.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of joelz@pobox.com designates 173.228.157.53 as permitted sender) smtp.mailfrom=joelz@pobox.com
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

Oh, the regex I provide doesn't handle the case
of filenames containing spaces.

That's why my pay grade is so low (zero, actually :-)

Try this:

-p '^\s*(.+?)\s*$' -r '$1'

(.+?) means capture one or more characters but stop where the next
expression matches (non-greedy).


On Tue, Nov 21, 2023 at 08:27:32AM -1000, Joel Roth wrote:
> Glad to, Rob!
> 
> -p '^\s*(\S+)\s*$' -r '$1'
 
> ^ anchor to beginning of string
> \s* zero or more space characters
> (\S+) one or more non-space characters, parentheses capture this as $1
> $ anchor to end of string
> 
> be sure to use the -d option first to make sure you're
> getting what you want. I didn't test this. 
> 
> The classic 'rename' perl script is almost the same,
> but does not recurse through directories for you (you'd have
> to use 'find' for that'). The search and replace expressions
> are separated by slashes. '-n' is for simulate only.
> 
> rename -n 's/^\s*(\S+)\s*$/$1/' [filenames here]
> 
> Have fun!
> 
> On Tue, Nov 21, 2023 at 09:34:45AM -0600, 'Rob Hudson' via blinux-list@redhat.com wrote:
> > I am not good with regexes at all. They give me a headache lol. Can anyone supply me a regex that will remove any trailing spaces in front or at the end of a file name? I use the program brename:
> > https://github.com/shenwei356/brename/
> > I have a regex to remove double spaces, but now I need one that will knock off leading and trailing.
> > Thanks for any help.
> > 
> > -- 
> > You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
> > 
> 
> -- 
> Joel Roth
> 
> -- 
> You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
> 

-- 
Joel Roth

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

