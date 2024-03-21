Return-Path: <blinux-list+bncBDGI3AUYYYCBB5OZ6KXQMGQEFG3SCRQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f69.google.com (mail-oa1-f69.google.com [209.85.160.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A67F8862C4
	for <lists+blinux-list@lfdr.de>; Thu, 21 Mar 2024 22:56:07 +0100 (CET)
Received: by mail-oa1-f69.google.com with SMTP id 586e51a60fabf-2218e929fabsf1446281fac.1
        for <lists+blinux-list@lfdr.de>; Thu, 21 Mar 2024 14:56:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711058166; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ut9gp9svTo5Kgiu9L9ku1Km0nZQCm4wXHkKK9LrNl3oMotpQ9gGaDI+3ogkbv3QJlU
         MGs+9H0+vfhgnrx5LQRGTRcPj2QXhaGk+IBcQec/3XlQSM+JK7eGJy2qvfIYOLXucfvS
         0iaPEWbHHNd8jk4rPBb/ckKR1+VHli/F+l+JWte93wk17MYORWwOuhtjxlSku2W35BMF
         w2bJdA231UYX5PvNlJqAhCBSKy5NIPNPK+hcSk5bhDn3jhi1A1RIf5RUdMiRgAsegnvB
         6jpxDFwMt+zFfoZm67oFu2FS88reRkEGBsWYeTD8tk/UK2S6aArXtCD2VsIHRqmM1YSh
         r70A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date
         :delivered-to;
        bh=DUJMaw8bjbC9fNU4UUu65Cysi81m3q0CaEIVdGUAaWM=;
        fh=l10Zm6mY8ZPix+kIrGkYI3Bqw8zH11J4bjAUmoewMco=;
        b=ws5e1OVjOyTdWl5GbiWaIeq4cQsOHqagsPSerw4/Z9XaHnzEt4abe2LGs54U9WcuaW
         9nM35ANNXGAZraKmlRECM/cBb1jHF6Zdd+y2ZZ3o76k9YZWEefYVt+zguVspUUKeaPJq
         siedVciylqrYUGtpDar7tt70jjQwhCcyX+kGEEge/ekuINjfbVJSFLF6IkXDGMCrJD/x
         opG651/GqXALlQMoEDwyBVhtU0dUw6kEnsLHD15+YEm/g+UwSMZ9qsvE363rPku/1Nfh
         IKZaNJqEFAidAwg/Q5U+cik+fCSZn+5k3K608wE2LzNDGfr3RMvhbkjI1RAy551WZCMl
         x8RA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711058166; x=1711662966;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:delivered-to:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DUJMaw8bjbC9fNU4UUu65Cysi81m3q0CaEIVdGUAaWM=;
        b=ujegcZR8XthMw2ckvF+eGvLymBGDmF21FOZ6LJziRL47aCPeLCwFZCtAUjbu2YhNNv
         OXh4rq+7m+8m+G33NqGEuD88k6elJX3ibq+c5r6VE/zN+IM5VF7fRRji9GnuBtYBtkXZ
         1ixoWKyJZI11QPMcYwMGquQ4nSr3/nEQz2rlXPhxAJjX/jaP6xTANOzXAON3OIDBN+qH
         2xPGrR2xoeDdnMg5ELc36Q4tPE9MYkDwvLaeUaB/Fvg9XglXVwbQtInsKBCmtBKzgKN9
         4dfBZM6ser4BbXzVoNDKWlnYAHqWgHj2DvixlLNTPlQC+X04KTND5P50YwnC7OThHVGv
         QpHQ==
X-Forwarded-Encrypted: i=2; AJvYcCVeQEN+KJa6jlt1UwO8mCJDgb057o/ujKVH2pB8jSfgOLsKgBF70CLaNRmcIJIdH7nkBsWd2kJjYJRSVjCeR0LXLe9/VPudvOaL
X-Gm-Message-State: AOJu0YzvdBHtBk3nEg7w1RLF+n+ilv4LSfO9AdOOYt/fMdVy/i8IIt7m
	qktJACgBBRv5LgHFSPVP4Ng0rTD1Z26L9ok7sbVFa1LuFgC8NUfp5aNAC4+bnEQ=
X-Google-Smtp-Source: AGHT+IGRocWp6W4KpKByugmvSw2kfXeVYcsjS0zmlWtRyoTmYPc94gRAAcGWTZLLX6b2p7KGgJAwxw==
X-Received: by 2002:a05:6870:6113:b0:229:baf9:957f with SMTP id s19-20020a056870611300b00229baf9957fmr529761oae.48.1711058165933;
        Thu, 21 Mar 2024 14:56:05 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6870:b91:b0:229:c767:cac7 with SMTP id
 lg17-20020a0568700b9100b00229c767cac7ls884639oab.1.-pod-prod-06-us; Thu, 21
 Mar 2024 14:56:05 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWdB5WvprX0Zzgk0BCCtwW3wEiE4dw2slweG1LUKePhX/lEGw3t6t4smx0oKEyy2U1WUiMNDtJSZkVpJUf/fU7vBrUdQmdfFr3n5mbv
X-Received: by 2002:a05:6870:c348:b0:220:b713:77c1 with SMTP id e8-20020a056870c34800b00220b71377c1mr554578oak.31.1711058165184;
        Thu, 21 Mar 2024 14:56:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711058165; cv=none;
        d=google.com; s=arc-20160816;
        b=mrml52yZD3L/FHf5iRRO1DZwXFRiQmMfq0FLN7a02YmByyVYYg36no8auCGIXoFYXA
         3C+FG77vmZMXCD36Kj3FU28l2ea+MjgbxXr1z+366I/uiLHJ3y0iDiEgFP+NeMrFKFH/
         ggHSMZo1Lk+mB5eNz2WY40kK1Z3XJz+YapqilpqcNv1KrDnLzHfgJZI9fQ1C2AD9GQYc
         tpV1hEaZxG629PxePHsM1mlgDfLrhwJducHPdoAh6Fr8IODEVDwqbYmGKSX7KltbfEQ1
         ZI0wT3bOzL5MuyonwPYegrL0sx5ZVwEN6Gty97SXoC4xHLmEOTzehntm7M0+51bKGwUp
         OhvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:delivered-to;
        bh=6axqgPy/LEGOzO092Wh2SP/+xFwyFHNOxLblhKZEGs4=;
        fh=rB/Dl9CIvpSmigbdsu6c006X5Mkk1djV04udk3n+r5s=;
        b=xNfDSGkDQt49WL1Go8YqD0Q14O8zCd1Hx5B7k6VnZwjBL1pPkpDAHWccXNYMZRFMvb
         qtitwjOa2tUNnXOnoPCRvCU52Pm24XlQSDW+xhB2zvHrKRb+K7CtFHDxTDdLov8vCx+j
         MUyks0wEn93GLgD+/Tuk7aG+1TDSE+R2X+RovqwVRNAMZi4O+ukeYso9KVtNwsNDvP5H
         LfwFB1oqvgJV0N30w0CEfHULKkn7qrYLw1z6uUL8rjvi4KWv762Lpiu81tiJeaaAvgIp
         xVaQ6qo7yDlwPmYVLo7fyXjT+Bf0+B1A4OxUFlk2QD6LrUNdQDZcH+Ft+BXySaE4y0sg
         8CZg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id de38-20020a05620a372600b0078a1cb844a1si763833qkb.733.2024.03.21.14.56.05
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Mar 2024 14:56:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-8-BUkTtkZ7OoCLTL4louy3Tg-1; Thu,
 21 Mar 2024 17:56:03 -0400
X-MC-Unique: BUkTtkZ7OoCLTL4louy3Tg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 919E11C05148
	for <blinux-list@gapps.redhat.com>; Thu, 21 Mar 2024 21:56:03 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 8D3E11C060A6; Thu, 21 Mar 2024 21:56:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 556411C060A4
	for <blinux-list@redhat.com>; Thu, 21 Mar 2024 21:56:03 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EB9E03830094
	for <blinux-list@redhat.com>; Thu, 21 Mar 2024 21:56:02 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-492-6iLP6bCWOD-pH_gles6c6Q-1; Thu,
 21 Mar 2024 17:56:01 -0400
X-MC-Unique: 6iLP6bCWOD-pH_gles6c6Q-1
Received: from panix5.panix.com (panix5.panix.com [166.84.1.5])
	by mailbackend.panix.com (Postfix) with ESMTP id 4V0zmc6llSz14hL;
	Thu, 21 Mar 2024 17:56:00 -0400 (EDT)
Received: by panix5.panix.com (Postfix, from userid 20196)
	id 4V0zmc6X61zfYm; Thu, 21 Mar 2024 17:56:00 -0400 (EDT)
Date: Thu, 21 Mar 2024 17:56:00 -0400
From: Rudy Vener <salt@panix.com>
To: Martin McCormick <martin.m@suddenlink.net>
Cc: x for blind general discussion <blinux-list@redhat.com>
Subject: Re: crontab -e behaves Oddly in Bookworm with Speech
Message-ID: <Zfys8Hj68vaXa0kd@panix.com>
References: <E1rnPjf-0007zA-2j@wb5agz>
MIME-Version: 1.0
In-Reply-To: <E1rnPjf-0007zA-2j@wb5agz>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: salt@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
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

According to the man page, crontab runs the -e option with either the VISUAL or EDITOR 
editors.

Try
echo $VISUAL
and 
echo $EDITOR
to see which editor you might be picking up. Then you could change it in your .profile or  other shell configuration file.

Rudy
On Thu, Mar 21, 2024 at 04:14:03PM -0500, Martin McCormick wrote:
> After an upgrade to debian bookworm, things were working well in
> the command-line mode until I ran crontab -e to edit a crontab
> file.
> 
> 	I've been using the vi editor in unix   since 1989 so I'm
> used to how it works under the command line and it has always
> been surprisingly accessible even under very austere conditions
> so I thought nothing about selecting vim as the editor in the
> crontab app and then I tried to use it.
> 
> 	I'm not even sure what it is that gets turned on when
> using crontab -e because up to now, it has always just ben like
> any ASCII text document.  
> 
> 	Now, the arrow keys do let one step through a line of
> text but the j, k, h and l keys uselessly let us hear cursor
> positions and not even that fully.  We just hear 1 2 3 4, etc as
> we move to the right with no feedback at all that identifies what
> characters we are passing over.
> 
> 	If one presses the carriage return, we uselessly hear
> more advancing digits and, if we insert characters, we uselessly
> hear things like 1,2 1,3 and so on with not a hint as to what we
> just typed.  This is totally unusable and I don't even know what
> mode is turned on when running crontab -e which used to just run
> vi on the crontab for one's shell with good feedback.
> 
> 	If I run a command like
> 
> vi SOMEFILE, I get perfectly normal behavior on somefile and can
> edit to my heart's content.  When I tried to run the botched form
> of crontab, I ended up somehow joining some lines together and
> didn't know it until a cronjob failed with odd errors and I
> simply ran crontab -l >newfile and then ran vi on that and all
> was clear and obvious so, if I can figure out how to lose
> whatever that mode is that crontab -e turns on, I will be happy
> once again.  I suspect that the text characters are immediately
> being followed by those darned cursor coordinates such that the
> last thing sent is what we hear but whatever it is, I have heard
> the same junk output I got once when I accidentally got nano
> started on a document some years ago and couldn't get out of nano
> fast enough.  The only useful thing I found about nano was that
> ctrl-x triggers the prompt to save everything or not and I answer
> no and make sure vi runs next time.  Another strategy might be to
> turn off speech while typing and lose all feedback but that is
> extreme to say the least.
> 
> 	Thanks for any and all constructive suggestions.
> 
> Martin
> 
> -- 
> You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

-- 
Rudy Vener
Website: http://www.rudyvener.com
Check out my latest story: Dwindling at http://www.starshipsofa.com/blog/2024/02/14/starshipsofa-726-rudy-vener/
Need a Limerick Fix? Visit https://limerickdude.substack.com

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

