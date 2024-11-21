Return-Path: <blinux-list+bncBDYPVTOXSQEBBMFE724QMGQEUH63YTA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 54FC89D53B1
	for <lists+blinux-list@lfdr.de>; Thu, 21 Nov 2024 21:04:02 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-460c6731ebesf19749141cf.0
        for <lists+blinux-list@lfdr.de>; Thu, 21 Nov 2024 12:04:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1732219441; cv=pass;
        d=google.com; s=arc-20240605;
        b=Ir1Bko9kWv1FtusMqfoXqya25xc/7GBEMB0XoQDJbVg6UOuvc3Mbp94KgkGsgru8Eo
         q8Afm30QCpP3E0vAYI9b7Q1xMhGvF/QhflyL7njvsa1xBNkHoL5GplcVp3+NrwXKS1zy
         xeFP0G9+AkM1vtbnBqN2RSdSZOzEVHl3G1wWKf5kqW8vgsk95vs45eiemBUA2j3atL0b
         sInts6YSAVswuuJaAU6/xK2fMWdRm+Mz5+lk4KRb7bpgHlibjJHif+7XnchQ0z5CP+5V
         8Cz3kxzvGJX44PaQYsgEPqmb2jac1SxFC7Oh8OdwFC8FwoA8ypGDA6JLozV01uLTGNNm
         kwrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=3Tj21AgQKiACiXhtIYfuwkPfdR+squ9U6r1UbbaPnQA=;
        fh=vjOIJCdMiogWLNnVc1JlIZnuXe00qLbea4wiJNA2Rww=;
        b=DxTcgtlu54QNchzQY44alrZ+FrjDDdXoJojn0bTJUtR2CDwZfLzfsXQV816/C3zSAU
         PnWm7M0ypUyNGefFUMG26k4F8U1Y3oysc5To3+FAVfDuWzM/LDly1AgD/79sJ31RE4vN
         OZwII69Ztbbftm/H+flveCufL9UJxFkSH24ckQmEnIa6oYTazNBUHJmvnkZsbUvzDGmP
         Aj28gsaIPACZ5ktZp6M1XRnRVTKAJQudGkIB//8wj7adu7X0piBQXD9/MQg3ujkGZB0E
         t39leInHogeivsIk8Jk7jDhv+4bdcf5Q4LuUH7LSDVLV2nE9WS95S0IPtFs7v+8DUhtF
         K/lg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732219441; x=1732824241;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3Tj21AgQKiACiXhtIYfuwkPfdR+squ9U6r1UbbaPnQA=;
        b=tn/JBsn/OT9Kb9JfoBWmMIEkMKsIfwcF1vFySqDr5HMar7gtfkrfUgWk94RGyJtus/
         T7RwwjELnLPKi5SgBzb1pFhFhtQ3d0rrY4sJxn47aFLlefW0s/sSe0RKByOjLYlvJd2O
         /0Z/TBmUuuVDof6TAlMNlI8f4y6v/i+D1wY/5WKPfSfWiy32pH1DqYRkBW+gX3KY9MEZ
         wGEMRvfI+OS+C2jQazDQfFDE4cKGV3E/kb9s3FYo8Ykt+e5Pq26QA06zlQZd1nGGmeBa
         6kjElRONrm2/ca2/SdUvsD873nJo8fBMSXyRsnFnPf3xR07wc4Jy/alXsV9oAgGvCDWq
         SwDQ==
X-Forwarded-Encrypted: i=2; AJvYcCW1zwwmL1RCPMZBa3Dl/ZunRz1orWi3raPZ79do8Cfb5r4kd7QNLHKHJ7Wdka4DGnz2ulrxRQ==@lfdr.de
X-Gm-Message-State: AOJu0YwCQW5rcjmy/5y27v/trrUqKp6E4mnGKBbzR8l0/cKMawNhs3Kt
	K4tUfkBBzvIWMMsagHRcXBTEy1pcwwLmzWk/iWfonUMx5kWD4k1DG3tuTAoqCpk=
X-Google-Smtp-Source: AGHT+IGvCqIZEeUShQmRD3p808vZX4mzDbSwhRLrUzTSddSR02XpFGyO/8Sm6Ugsan1ewXWEdfiF7Q==
X-Received: by 2002:a05:622a:558e:b0:460:8d5c:34bd with SMTP id d75a77b69052e-4653d568487mr4785641cf.17.1732219440856;
        Thu, 21 Nov 2024 12:04:00 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:58c8:0:b0:460:ef94:c47d with SMTP id d75a77b69052e-4652f64d1dels17656191cf.2.-pod-prod-05-us;
 Thu, 21 Nov 2024 12:03:59 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXqFbj4H5zDp4vwZtoNneebx8GiAYBhy0LLsw3Xhhlhig7Nal5gD2Suc2UU7KTDYHI8kzWM3N9tGvkOAg==@gapps.redhat.com
X-Received: by 2002:a05:6122:2687:b0:501:2556:1cd9 with SMTP id 71dfb90a1353d-515009b7adamr65234e0c.10.1732219439521;
        Thu, 21 Nov 2024 12:03:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1732219439; cv=none;
        d=google.com; s=arc-20240605;
        b=RZBc/f2tMMYiwXhNli1Nl9pS+Fg+ldk2SDa95YVSeqXwtXug06ijxnvE9VgPXiZh4D
         0ekJZ26cQidVQK0rcUJdwYjHqIsliHDxZW1D5LA55DIynh4p/8Ungrc69haCQo/eqRNx
         tJEeLXRRXINB9yMP1nM6GNZwSg/Sak1xJk0BYC+dQ/BNkdKU7fr5Fed5IC1NBxdrqk3k
         0Q8mvJHm5pMLEfXYeTumyCL2c/+YYW+XWYdLzzvU1X4Zyijs+vmiwdss8lgPK5R+Ci69
         PEJkvK8X5duM682wJJYtmytS9Ghc71Gu39ou6m06Rpa/RNRDTs00gAc/E147ggZvLSQO
         Rhuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=OWy6N61YtATa/SmdyOoyA24LdStO0jnWzSNi5QuyGx0=;
        fh=Fku0pTnhkFLD6c/WL3jDDCEXY3oFpeV8DKFQ7ishoJY=;
        b=Q/2vwOnMThn4Fh1A5ieSbjFqiyvw6pY2wQ/YoNKFuVy3xOYuEDd3Au1GTcmh//S73/
         Ct32kOn80ByKLoMVkRw0FPmGjKk/gWay9q6/FZaHRZ3+hVpeTFUNYizbs+An2Z/9qf6l
         /bbBeOKM0SRNMzMQ4SqsYWFF5/SIrCX8gwb8INasdcTbFNc33s8As0wrgDwqkHdn4svL
         gu8yqxGnOEVh+45XTEhiHX7if+x7vjUaTmccJJloiD6JMBdNVgiN8SjhmpzjTVRlRYxb
         z3XkotzJVxgpGTnjaWAv816uGsq276HBZMYA7NlA8eWqH3prrdg8kI0/aGJd8dLRZpn8
         3XGw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 71dfb90a1353d-514faf1f197si271711e0c.87.2024.11.21.12.03.59
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 12:03:59 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-533-aZDR1IXIMW62AU8e7Inuqw-1; Thu,
 21 Nov 2024 15:03:57 -0500
X-MC-Unique: aZDR1IXIMW62AU8e7Inuqw-1
X-Mimecast-MFC-AGG-ID: aZDR1IXIMW62AU8e7Inuqw
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EEA001956095
	for <blinux-list@gapps.redhat.com>; Thu, 21 Nov 2024 20:03:56 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id E941C195E480; Thu, 21 Nov 2024 20:03:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E6D0019560A3
	for <blinux-list@redhat.com>; Thu, 21 Nov 2024 20:03:56 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1292E1956089
	for <blinux-list@redhat.com>; Thu, 21 Nov 2024 20:03:56 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-689-DtHEfkHZP0WLMf6wEVQ95A-1; Thu,
 21 Nov 2024 15:03:51 -0500
X-MC-Unique: DtHEfkHZP0WLMf6wEVQ95A-1
X-Mimecast-MFC-AGG-ID: DtHEfkHZP0WLMf6wEVQ95A
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4XvTh71xSRz3yDK;
	Thu, 21 Nov 2024 15:03:51 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4XvTh71cGQzcbc; Thu, 21 Nov 2024 15:03:51 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4XvTh71XsLzcbV;
	Thu, 21 Nov 2024 15:03:51 -0500 (EST)
Date: Thu, 21 Nov 2024 15:03:51 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: Karen Lewellen <klewellen@shellworld.net>, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: A question about accessible branded distros?
In-Reply-To: <Pine.LNX.4.64.2411202131050.435046@users.shellworld.net>
Message-ID: <2f5e4da3-7fee-c707-d18f-2a90b055828a@panix.com>
References: <Pine.LNX.4.64.2411202131050.435046@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: TiRefLeqBzD-GaW45OuVcmXwnPXREiSTD1538fEL-Xk_1732219431
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: nqI_MgTp6mu6_LQPp0xgxcNpC2a1YF6GrsCgGda550I_1732219437
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

Mate flavors of distributions have control-alt-t to get to terminal and
exit in the terminal to get back to g.u.i.  That's done by a keyboard
definition that can be done by any experienced linux user and by any of
these other distros in any of their flavors.


----- Jude <jdashiel at panix dot com> Q: What borders absolute stupidity?
A: Canada and Mexico. -----


On Wed, 20 Nov 2024, Karen Lewellen wrote:

> Hi all,
> Freely owning I may confuse these. I have not given Linux serious thought for
> one of my stand alone  machines until hearing Piper, which was  built for DOS,
> minus latency and so forth.
> Still I believe?
> there is at least one Linux distro, flint?, that aims to allow one to move
> easily between command line and graphical.  Coconut was referenced recently
> too, although no one spoke of the pros / cons of that package.
> Generally speaking is there a pro / con stance to be made for distributions
> that claim to  even out some of the Linux layers new users might find where
> access is concerned?
> Thanks for perspectives,
> Karen
>
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

