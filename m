Return-Path: <blinux-list+bncBCVPTHE7K4IIDLH3VEDBUBCH3GNR4@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id B26F17DAEB0
	for <lists+blinux-list@lfdr.de>; Sun, 29 Oct 2023 23:00:34 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-41cdffe4d1csf52825591cf.0
        for <lists+blinux-list@lfdr.de>; Sun, 29 Oct 2023 15:00:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698616833; x=1699221633;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zRLVS93zEE4XTWZFoYUgW79q/VBUG1gO+nFPxlHa3WI=;
        b=adWSOcsbYMRuSPk0ooz0OT3ZPSOnX9Cdf8Uo8SuWpa4PGtOc6lqw4yUFPaIZWOFxAr
         kAwQ+m+Oda+moDmke/9eBtAj92TlfLkRP+McxUijpWxRCd4/NsFNxiR3GKlsWIfmriCJ
         OZXouJ5GOOS5cuWA511W6X/gVN8jkIV7EI3q/Uu8VcDM2EqS/qSvmcsejKI2xNEja+Uz
         8nhXWaBhhV8ccxlPL+DTzj6W11Hj/Li86ykMN1Jf241O9TlqJmGcUb1MvVMi17ZsBFRw
         Ao4IrOM4tnvXEfPTgzyX7tozhT+FCk4AntoSFj3IXT3xDlOl+Cti4f4NPYHzMkT34Qy9
         9QSg==
X-Gm-Message-State: AOJu0YxXIgM30nK1o55QyWMAkc2eXpA+NGfB7cS4q6JwFUdrHCCDrqZC
	zTWDvbBHLQrNRkJH9KO9doLcaw==
X-Google-Smtp-Source: AGHT+IGYq9zGAoTm8bszWml0PigiozjA1U7yYE+GEAeMuicrluoq0IEF3iuescb47iQSeJJ8FNB/HQ==
X-Received: by 2002:a05:622a:50b:b0:418:fed:be4 with SMTP id l11-20020a05622a050b00b004180fed0be4mr10835410qtx.21.1698616833523;
        Sun, 29 Oct 2023 15:00:33 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:518a:b0:419:8ce8:251d with SMTP id
 ex10-20020a05622a518a00b004198ce8251dls2095184qtb.1.-pod-prod-01-us; Sun, 29
 Oct 2023 15:00:33 -0700 (PDT)
X-Received: by 2002:a05:622a:18a:b0:41c:c5bd:712 with SMTP id s10-20020a05622a018a00b0041cc5bd0712mr11252511qtw.62.1698616832923;
        Sun, 29 Oct 2023 15:00:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698616832; cv=none;
        d=google.com; s=arc-20160816;
        b=y/O/MM7zDnjPAU23hiCbsU9CrWmJQ1et/hKkZcUi0Uk3NccPBZXVIbKRoTwpH/hZlT
         mTT+LfAPfMMNVGNH4VyWkIRyjxlT1l2V2W7AHPc+BCDkbnqlM1MHYOE3RxFHAlgNfsnM
         YP+6t+1c7n3uT6QldHtNdl7TZ28MuhHFBZRRa9zOI2R2cdtblhxw0AJ/vtfR0PyfPkm0
         L0mGaG4bnXuHyltfGPKyPA3VAlj7nlz2jHnhquZXIhLj2khDtjp4p7+QMeS4N4VgB61C
         objj89MzzYZ599YLU8IdcmJbY091cN+ZibJlGGUibOJmyROIj59/zYxsG6P+rh/+FcS9
         xHcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=zRLVS93zEE4XTWZFoYUgW79q/VBUG1gO+nFPxlHa3WI=;
        fh=SNstwyF2CQS0+azCE3VtpVyZLOtgI3C5a6ijDTsX6uM=;
        b=A1AMaCvvj/SwKFuWOp1HmH5hbWxkXx/sQ8ALTQQ9oUbOJTr4QeYPjEduMPeJAIixPY
         mOd/MVR/TeR+VohPHwl1ZXkjbiP3cAM0oirTxZbfbyxhrWR2I+dboA1Ouh+wjbq18Wxf
         +WEPpTX2uKVnJDwwtlhPGv4TsdiCxvSO3OEw9eL7dXFk4+xCJsOUPc3O27GwpSnCmJnO
         ytG3LfAKJm0fYcqLw7Ny+cuK242nYhoee/r+3xdb9FQ5x9V6AjDJ1/fysNtSnlVarNmH
         LoB9cqnJXbs4p/fzcPlLCUFoKyOkdaTRT6yWbeFicr5LHm8G6LgLQ6P/1oORJQa2SVZi
         KeTg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id f20-20020a05622a105400b004032d91e8b7si4679721qte.295.2023.10.29.15.00.32
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Oct 2023 15:00:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-256-evHkAuRsNqGow5euHI6pIw-1; Sun,
 29 Oct 2023 18:00:31 -0400
X-MC-Unique: evHkAuRsNqGow5euHI6pIw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EDEDD29AA381
	for <blinux-list@gapps.redhat.com>; Sun, 29 Oct 2023 22:00:30 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id E9C1F2166B28; Sun, 29 Oct 2023 22:00:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E25E22166B26
	for <blinux-list@redhat.com>; Sun, 29 Oct 2023 22:00:30 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 86C7583FC20
	for <blinux-list@redhat.com>; Sun, 29 Oct 2023 22:00:30 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-344-Ohor-19HO3m-vzfPomQ8fg-1; Sun,
 29 Oct 2023 18:00:27 -0400
X-MC-Unique: Ohor-19HO3m-vzfPomQ8fg-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 1597D40508;
	Sun, 29 Oct 2023 18:00:27 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id C13831001B1; Sun, 29 Oct 2023 18:00:26 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id BE652100094;
	Sun, 29 Oct 2023 18:00:26 -0400 (EDT)
Date: Sun, 29 Oct 2023 18:00:26 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Chime Hart <chime@hubert-humphrey.com>
cc: Didier Spaier <didier@slint.fr>, blinux-list@redhat.com
Subject: Re: seeking a sftp site to test a problem?
In-Reply-To: <9857b30e-cba4-bf77-66bb-20471e31b1a1@hubert-humphrey.com>
Message-ID: <Pine.LNX.4.64.2310291758530.3115344@users.shellworld.net>
References: <Pine.LNX.4.64.2310260936510.3063300@users.shellworld.net>
 <e5b85119-9e37-439a-aa0d-d77a0a3d970b@slint.fr>
 <Pine.LNX.4.64.2310261209260.3065297@users.shellworld.net>
 <9857b30e-cba4-bf77-66bb-20471e31b1a1@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
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

Actually,
Shellworld is slightly older than that smiles.
Kare



On Thu, 26 Oct 2023, Chime Hart wrote:

> OK Didier, Shellworld has been around since at lest 2002, created by another 
> blind user. Shellworld is under another owner now, running ubuntu. Its 
> original owner Ken Scott was on a podcast explaining the service. It was 
> surpirsing your search didn't find it. Also, reguarding putty, when I have 
> used a windows machine, I had much better luck useing teratterm.
> Chime
>
>

