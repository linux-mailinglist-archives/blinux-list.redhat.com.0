Return-Path: <blinux-list+bncBCVPTHE7K4ILVVWVWQDBUBCYYYO7C@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 96127931A58
	for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 20:32:28 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-44f104e3ebcsf37344401cf.0
        for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 11:32:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1721068346; cv=pass;
        d=google.com; s=arc-20160816;
        b=Kin0UIEyh7h9cQF3xdGfTo0cuGpMNX1DztqDy/homILgcpm6XsiU2/LPe99KgD3JQ4
         yrzbw4hiK3ht4BLXoSMSMRD1ERB70wlsZqzyLYgb1I0fEUV0ZtAbKJk5CjF0p/XnZWo6
         6rCEsfrgqFoyNDdLGBh+8LNvtkY2PqRSWeAvaiDdAzIqpy19OsOxDDFyVEI6p/6Ff/Zz
         AKdtTjMwkF0Da003F/NNsz2/L3lKsuqliliIXfVYteXXBDffEkr0JjGR1allFQLb1qsU
         4XRoLqp711/Mn+93cizaD9L2dbXXQ2p0uHlPvKZS1O5PZCW6LsbTe6Xckj+9kUKG9oay
         8lCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=RKZbX+qQWCWAU/7aSxVDB2Cvzdt14YI6Gk9EOJTTju0=;
        fh=vGppD6qfTsVJGu1R9OKOYY06GrMy9yRB6TxRcC2RvYk=;
        b=gzbFnHQWBB5vFJJ9YHanW1SoYZmgQtA46gT/7ELjWKxkGciT7p/fJ+kcQjIgGfCRXj
         bpiccQLH21vk7FXJTsH3020xyIn9wlL/+Ldy9Oi1PuOaShatNW058NkGNYw4T8DIREgK
         gQMr6RtsftWy46vHDAFhXJ5Ie/t8Sd5pVvT34qW0INxYxW9BJ+kGaSZSm3vNmoTKB63b
         WTNy0cgPRRd8a9OgsN9q4BvbBgLHGkmuqQT42DqxKnuTofozcLV3qQGURlaRZxmSnIyH
         0iTfVEuK+LYKCRZKDBM6nIEx+TcY/aO8gANQqICYU2nVhv9AeCHjE7DgGN/2gCvACYZc
         v+7w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721068346; x=1721673146;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RKZbX+qQWCWAU/7aSxVDB2Cvzdt14YI6Gk9EOJTTju0=;
        b=e+NWF2R/rswEWdg9IM1J5/U16EVOnxtRX/xb2hzpWwIBL8oakJeVn/L5jGJ/joZJAb
         aqaV1clVSYpRI4G9NUBFwVGgbE73P0uLZB7u0VivWRE8ozIMogOrb8ZFYBoyEwtTpK58
         zQaHdq7tqxqNmmVGKwcA6rKVPWuiPfMOFH06MNF929LLkgZHy1oAzkjlVl3MogIld3GQ
         mFRm9g29huPFS6EL7GUz5ZdeZTv9p8iUaqlHw+vbrXXlyfVAHKHtYHAyxh00vJIaHKDt
         0v44+EIRiboiAGpU3BGLXl3aJmuttSMXQhHD1CPM3wvPXbtvW/q6lfUY2rKu3r6AExsL
         elTQ==
X-Forwarded-Encrypted: i=2; AJvYcCXiAwXZhzfDQA10jvN7C7eXI+FLFyhyNelj7qsLcyaK+ArpsN39cnYtiN6sn33nXYd/LFjPCG3hAu9ViuKhM3pKPaJvikr5kzBX
X-Gm-Message-State: AOJu0YwXzDkQwo0IBnNQvvbOGX0VXPpFFaf8n+VGsJz9VXMUaGb9Morg
	vBleXwht/O+sSpXzWdYVJAadC2sDp2vuR86j28xpSHsoJdWGWiPVhWcIWiYBsG4=
X-Google-Smtp-Source: AGHT+IFGKfg6h+RoX+RQ7qV7cfrqcLS4Mqg6U96vMEbgbsAG7h9ljvtPKTU+sCZkBTu+7SERudDQgg==
X-Received: by 2002:ad4:5dcb:0:b0:6b5:e6b3:72fd with SMTP id 6a1803df08f44-6b77f52cfbfmr707776d6.29.1721068346529;
        Mon, 15 Jul 2024 11:32:26 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:1911:b0:6b0:8c6c:833b with SMTP id
 6a1803df08f44-6b74b31ec4els65039066d6.0.-pod-prod-08-us; Mon, 15 Jul 2024
 11:32:25 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVpZInLetyxt3U+mSuL1S2TOa3/0/MVxob/AOFp7TWpS1W595xsQB2QRsYcztcY7yEJ0yRHdly93dxLs4Xi2hNYYfPfQtcjyQ85iX3F
X-Received: by 2002:a05:6214:d61:b0:6b5:aad9:c19 with SMTP id 6a1803df08f44-6b77f625c60mr307316d6.58.1721068345760;
        Mon, 15 Jul 2024 11:32:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1721068345; cv=none;
        d=google.com; s=arc-20160816;
        b=JAZ9emMBwTFWiaaV9EGahD2S2NLZ4FifXjgmTEEDw7iKFfwlLxEarEwTdASxZ5dbrY
         ZQEEhMY/tfZWXiWbCfJurUdiP3ia5ofGQR+AgTJF+zZtkdMLDUEUr2lTnTXPLy/56D0W
         AD+lfUey+i+XjKxHzpxHQJoAPOteNeDYbhhXkUCZOLa+Lfb+1BZgOM0KBxEzYKuFf916
         nIhnKLBGHOZ48t6W3kJaDafpVxFxgWO4SkqXfA2LbQDd0vBudZJO8G3G3eXUl6xCfEv+
         hET+VkZnPVEv2+EE47UX6fr7oS8zNwQbtXyNrOZIu3AeSyfu7IobkqfXG+tAEk8w+9hZ
         8qqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=RKZbX+qQWCWAU/7aSxVDB2Cvzdt14YI6Gk9EOJTTju0=;
        fh=fQue1LVswyroBUi493FuNRGs2h1etDPzgwP/d0K1aSw=;
        b=VIrokf9YgLsp6QbkrxQbyiwKCS0GYV4oUVWaxEmrqEQYsCz53vMTchlgMsbNiXYZy9
         s74dIEC5Ys0lR//FsUCKRkkoXLVPeNgSEXlofyYjduHK2Z8+v6K7Th1ZC56Vvl+gUtnu
         TsfAwobLSCksdDlxx/4LqPOy0xA9G0R6bWodsygJ/5x34N4LR/vqh4vP+mKbJqvj/eHB
         oD/rvl7KZQ4Z2Y10FmLPhBhjehTY0rIXOzSh1VvkvhAqYVHLILxaRkoSFt8ZvWCfjvmG
         B4sfPOJ4paFuQ8qhc6W8KP02Sqt+SweYT6V2SZ7Y+v5WZmAH0T277q3t+vso4nhlEYpY
         UXEg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6b761a25d60si57031376d6.407.2024.07.15.11.32.25
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 11:32:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-318-BauXJ5CmMsyQd3ce4h3rew-1; Mon,
 15 Jul 2024 14:32:23 -0400
X-MC-Unique: BauXJ5CmMsyQd3ce4h3rew-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B90F019560A2
	for <blinux-list@gapps.redhat.com>; Mon, 15 Jul 2024 18:32:22 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id A9FDE300018E; Mon, 15 Jul 2024 18:32:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A76C7300018D
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 18:32:22 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BF1A11956064
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 18:32:21 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-558-wpmoUV-tM4S86E3jJNTb9w-1; Mon,
 15 Jul 2024 14:32:18 -0400
X-MC-Unique: wpmoUV-tM4S86E3jJNTb9w-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 746D940508;
	Mon, 15 Jul 2024 14:32:17 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 363CA1001B4; Mon, 15 Jul 2024 14:32:17 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 33F391001B0;
	Mon, 15 Jul 2024 14:32:17 -0400 (EDT)
Date: Mon, 15 Jul 2024 14:32:17 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Chime Hart <chime@hubert-humphrey.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: how many Linux machines do you run?
In-Reply-To: <66c78283-a5fe-7f46-ca57-84eb802b125b@hubert-humphrey.com>
Message-ID: <Pine.LNX.4.64.2407151431400.3548357@users.shellworld.net>
References: <Pine.LNX.4.64.2407142337570.3536958@users.shellworld.net>
 <71972198-e2e4-9aa4-ffa2-242ad9e066cf@hubert-humphrey.com>
 <Pine.LNX.4.64.2407151356560.3547821@users.shellworld.net>
 <c9f7d2a9-5da2-1cde-7cfc-a1ccd83d2128@hubert-humphrey.com>
 <Pine.LNX.4.64.2407151419440.3548142@users.shellworld.net>
 <66c78283-a5fe-7f46-ca57-84eb802b125b@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
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

Hi chime,
yes, the escape process does not work here.
thanks for the idea though!



On Mon, 15 Jul 2024, Chime Hart wrote:

> Well, Karen, I just typed bash and tried it, but for me it just beeps, so 
> maybe there are other ways of grabbing that list? Hopefully some1 else will 
> know.
> Chime
>
>
>

