Return-Path: <blinux-list+bncBCFIHJ744YGRBKHY5G2QMGQEW44YPTI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com [209.85.160.72])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5E494F8DD
	for <lists+blinux-list@lfdr.de>; Mon, 12 Aug 2024 23:18:33 +0200 (CEST)
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-260ffc95201sf4386655fac.0
        for <lists+blinux-list@lfdr.de>; Mon, 12 Aug 2024 14:18:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723497512; cv=pass;
        d=google.com; s=arc-20160816;
        b=iHXx9dW6r5ezpH3KldJGqSjxqiXnSALoiURXgSDwsOiBC5Mj09lD8GSigrxnBL2fsS
         dNQEL7xqdOhtKAHColZNcjtYMhBHNdwZlKTvPipiQylD7cZB5a369K2Auh5ie7GddWXS
         nDW5hCcm5POzrk8v5o5rH+gOGPJCX4DwejnqsERy134yNIn6BJPbjkv0/cqxAS/PFmTb
         oMMvbQisEe+Jhy8JV2Lu7GYT91otZgz+DNxweRwOHXXXhZu4NZYCkpFxaWhoi2ucL5SF
         2DPSW3eWk9Jsekz9jH5Aw0QWC4m22NyFuyot1aXeeqDKBAqbYKTyuTIBEpGDId7luVx3
         F+fw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:mail-followup-to:message-id:subject:to:from
         :date:delivered-to;
        bh=GwCKD1cttL544MZuCpjh7SgkigMyb5l9yOlWqpgVXtw=;
        fh=jIyr9eoJV28iQdJ+/IWklsFAcaVDtviOzNCtkJMkdhA=;
        b=Nv3b8EPDtYbII1PdRX8hIt8Aq3bg8c3Ws3c3Y3W+pIq/N6zvoGEl7WlqHlyD8V+uuC
         GNlDFdcFVh86yzO3E58jwypCPw/qDXuyuZmuf1azqJ3L0Hq1JN98hXnKycY0A6VcihDB
         exB5jxWshZxC+CGRMeOpnOGJAu/X/mWSZbSI7RXe66PCWFzfwXUjGceO7mc0VkK+IBS7
         SxKdMhBIrumXAAhlfEtxAWj2SY/wRp2KX1GJpkhBujLtXM5GkShS2T2FgmE6MlF4101G
         z/D4bcF0K96cfqbIt0VZUaedaQcSjH5+eJAiayaVCVtKC648fFKQw1CsnqbRbKiegJVa
         cvdQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) smtp.mailfrom=blinux.list@thechases.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723497512; x=1724102312;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references
         :mail-followup-to:message-id:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GwCKD1cttL544MZuCpjh7SgkigMyb5l9yOlWqpgVXtw=;
        b=vKSb0XgObMwc8IUGwIvACWGzgKmLAtdBstRF/uBLnmSBZ/gHSVHAtc2agCnPwcT1T6
         FXafZxwJL4mXWyl9W9mlLJMCWxj7w6jbNm2AxkqncH409fopg5U+qBPRrmmMijdwJxvO
         zmEYWbHpOtlPvg5AdUDwyVPHdGmxqr2SPwgHZ2CLE3e5dat+UAF4mSTfUETe9FOGaQHL
         Sq/uoRSp2ZdPUB9vInDm5Z5z1iDDoAB45t6k/UgrVmOINPcW4OoD9KGp0FQlHpEAa+NP
         N2jpI08r98e+NY1LkzG1gaZ5FEu72+oPTJ2upUZ/MZJuA7fiH8reZ1bEx8yEd8PD/Qcg
         WiWQ==
X-Forwarded-Encrypted: i=2; AJvYcCXQQHbq51jYfrMxSqaC8fzhFsiR1yrwscASm1JhdiY+VJTfQVVmmCECteOp7Jsa4krvALgb8AouHaL8jREXqTBdTm3SFQYm9o3Q
X-Gm-Message-State: AOJu0YwuCFRrUGWG9le04/Z6Ov7DRH4bgFV/l3fxJrJdKNeVWslQ/a6W
	wT3r2mKWfl+szIGefVz/ChSF0CCqnKKHLEtT5X75VdtGNy6IgDs85x7VEdD3qtw=
X-Google-Smtp-Source: AGHT+IEuulLpATCkQghnN4eteLwQ0jUBMN9rtJUI1R2VPIfoXPg44Lc52Ni4EbuPDy1TZh7f6w33XA==
X-Received: by 2002:a05:6870:1c8:b0:24f:d3ce:fe92 with SMTP id 586e51a60fabf-26fcb692519mr1658306fac.14.1723497512352;
        Mon, 12 Aug 2024 14:18:32 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6870:3d9a:b0:25e:1ff1:3bb7 with SMTP id
 586e51a60fabf-2692505b320ls2842969fac.0.-pod-prod-02-us; Mon, 12 Aug 2024
 14:18:31 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUq6eTOTnS8cfjhIevxIBV+fJM0uOLTa3oLQ0epCYPV7oMk7nT3p3h6sKZd49hLcPnsQy7ToHRRK9Q8QwEj4Nkkph2KL3UAV9iAcAc7
X-Received: by 2002:a05:6808:2019:b0:3da:e587:3e1d with SMTP id 5614622812f47-3dd1edd2b6bmr1782064b6e.4.1723497511566;
        Mon, 12 Aug 2024 14:18:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723497511; cv=none;
        d=google.com; s=arc-20160816;
        b=lbVlFCc2mjZflETj+6FpkE+h08H3gtfFeguDSW+B+7AlfvIiypqsDg2FDCjGJAXiuD
         Imemldgoqz8pHgl03kOR0B8pVi7JdtjgcaEYk0dcOeH8OOm6k9zwqq5Eru7YXXpbPrfv
         w+wSsIkMWX7N3cqMQQwiicftm9X5QAiauMQir7VOt5E9H4BfH+NsViqqlSGpldKMDJP9
         lVH/Kk0IQPEQBVeZGO3fKiHEl9Pg2UXMT0bWuhLRmf7z5BzXuM+2V7RPnJBalJ1c8l67
         VHom5BAL+hsJdPxnTIQfTXCij09A0ABDJI4xgLdtikXZUiJP5dzoaotyqJAsHr3oCDGT
         REgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references
         :mail-followup-to:message-id:subject:to:from:date:delivered-to;
        bh=uW/GetCSnV0fc75dX0R/O6dlRbE900NVwVLChO1U66A=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=bR3UvskkyQC5HuULAA4MfxhmVkz2Ivb3JfTZGN5GULdWQniYVExmGCEilwkb93QhqE
         0Gki8BjcZS3Bv9XZW38SQEE6R/FwZv+JFRKuonOHe9AoRIlnxgfWd3bbVKYpiRtU6Clw
         w1zifTgKYfgjuaVgmRBQF5YLz7CbW4gboyKaKGbvrUDWxQEXJP0VlIBncrBRMhDucRU8
         BhiPwakGtRfwmYoLLRaHDMhD2NcnKyJ0uhDvK1cbsTWBSwNBb6VKRsmj/Ct9xS6UuWWh
         CVoGlj5X1z+4DyQ8pj10gI6gqxhweC8sWAERwuElD0yFmFTVo6HWX0yiMC2MPnsVxA2C
         8OYA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) smtp.mailfrom=blinux.list@thechases.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-4531c28edfasi68837861cf.546.2024.08.12.14.18.31
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Aug 2024 14:18:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) client-ip=54.39.151.74;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-201-P6gwCA2aNxGQc3JziJXD-w-1; Mon,
 12 Aug 2024 17:18:29 -0400
X-MC-Unique: P6gwCA2aNxGQc3JziJXD-w-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 64C1D1954B10
	for <blinux-list@gapps.redhat.com>; Mon, 12 Aug 2024 21:18:28 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 5E5D01955F66; Mon, 12 Aug 2024 21:18:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5BE8319560AA
	for <blinux-list@redhat.com>; Mon, 12 Aug 2024 21:18:28 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D15E018EB228
	for <blinux-list@redhat.com>; Mon, 12 Aug 2024 21:18:27 +0000 (UTC)
Received: from thechases.com (thechases.com [54.39.151.74]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-86-qGrK2KPxNXm3rD3kfdskEw-1; Mon,
 12 Aug 2024 17:18:25 -0400
X-MC-Unique: qGrK2KPxNXm3rD3kfdskEw-1
Received: from localhost (thechases.com [local])
	by thechases.com (OpenSMTPD) with ESMTPA id 2e28e0f3
	for <blinux-list@redhat.com>;
	Mon, 12 Aug 2024 21:18:24 +0000 (UTC)
Date: Mon, 12 Aug 2024 16:18:24 -0500
From: Tim Chase <blinux.list@thechases.com>
To: blinux-list@redhat.com
Subject: Re: taking a screenshot using either Links or e-links?
Message-ID: <Zrp8IPscd8k_WF1x@thechases.com>
Mail-Followup-To: blinux-list@redhat.com
References: <Pine.LNX.4.64.2408091402170.4147350@users.shellworld.net>
 <ZrpnxHg6pp4_xhuX@thechases.com>
 <Zrps4QuFBMaLL4V7@panix.com>
MIME-Version: 1.0
In-Reply-To: <Zrps4QuFBMaLL4V7@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: thechases.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: blinux.list@thechases.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of blinux.list@thechases.com designates 54.39.151.74 as permitted
 sender) smtp.mailfrom=blinux.list@thechases.com
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

Thanks for the GNU screen version of the same sort of thing (I used
to use screen a decade or two ago, but started using the BSDs more,
and tmux comes with a base install of OpenBSD, so I just kinda
drifted in that direction eventually)

-tim

On 2024-08-12 16:13, Rudy Vener wrote:
> You can also run elinks, links, or lynx within screen and do Ctl-A h to save a screen snapshot in
> hardcopy.x, where x is the number of your screen within your startup directory.
> 
> Also, I modified my elinks.conf file to emulate the lynx keys, so I can save
> a rendered copy of the page by typing
> p, to print the rendered screen to a file.
> I have long since forgotten what the default key for this function is, but a review of the elinks manual and conf file
> should help you
> 
> Or, if you just want a fast and dirty solution, copy the following
> lines into your ~/.elinks/elinks.conf file:
> 
> bind "main" "Enter" = "link-follow"
> bind "main" "l" = "link-follow"
> bind "main" "Left" = "history-move-back"
> bind "main" "h" = "history-move-back"
> bind "main" "Up" = "move-link-prev"
> bind "main" "k" = "move-link-prev"
> bind "main" "Down" = "move-link-next"
> bind "main" "j" = "move-link-next"
> bind "main" "p" = "save-formatted"
> bind "main" "!" = "open-os-shell"
> 
> 
> On Mon, Aug 12, 2024 at 02:51:32PM -0500, Tim Chase wrote:
> > On 2024-08-09 14:08, Karen Lewellen wrote:
> > > I recall, that links the chain has such a method.  If I am right can someone
> > > outline the steps again?
> > > or, can one create a screenshot file in elinks?
> > 
> > I don't know if you use tmux, but if you wrap your links-the-chain
> > (or lynx-the-cat or whatever) in a tmux-session, you can use
> > prefix-colon and type
> > 
> >   capture-pane
> > 
> > to capture the pane's contents (your lynx/links session), and then
> > use prefix-colon and type
> > 
> >   save-buffer karen_screen_capture.txt
> > 
> > to save the snapshot to "karen_screen_capture.txt".
> > 
> > If you don't use tmux, it's an incredible tool and I strongly
> > recommend it, but I wouldn't want to encourage it while you're under
> > duress of trying to get work (like screenshotting) done.
> > 
> > -tim
> > 
> > 
> > 
> > 
> > 
> > To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
> 
> -- 
> Rudy Vener
> Website: http://www.rudyvener.com
> Check out my latest story: Dwindling at http://www.starshipsofa.com/blog/2024/02/14/starshipsofa-726-rudy-vener/
> Need a Limerick Fix? Visit https://limerickdude.substack.com
> 
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
> 

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

