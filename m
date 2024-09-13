Return-Path: <blinux-list+bncBDYPVTOXSQEBB6UTR23QMGQEXBTNE3I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 0067C97762A
	for <lists+blinux-list@lfdr.de>; Fri, 13 Sep 2024 02:40:28 +0200 (CEST)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6bf7c81941asf4268736d6.0
        for <lists+blinux-list@lfdr.de>; Thu, 12 Sep 2024 17:40:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1726188028; cv=pass;
        d=google.com; s=arc-20240605;
        b=Oba0SZ+ER4ZEyhNWizws+6u5y6LUnhRvMNwhKLdw9nM2GE7uixiWt9+osOEDuCNquR
         6beoJSznEmpKkCGMMkT69/aK0kMZ4fHCt4rRI7+o8Hgkp2eJVXeiFtO6E6vLoGmdHlDv
         9OyAPif/nKJIEHzjAPz8oJxbj5DkTrsS+AxFkJF3EjVbCx6nxK6Ah19nDHJzutnswexl
         VgB4wxB1cp5kfA/A6/10immbbBniIEecvEAqM/seyq6I4X5tHpsVVQG6FrCtvdF+n3Gd
         y9vWYVov9rtJlFs1F1JiFx8ih2BivjSIPr6eo7obkGK1xRw7G8a6xKX8Vr9c9BjA5uWc
         9ahQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:to:in-reply-to:cc
         :references:message-id:date:subject:mime-version:from:delivered-to;
        bh=OrbG0pQovEEH/6t6XiVHWTJi75KFYjiXDktc/IDup80=;
        fh=Iv3BzhZibCShYVAKVd4cGxn+0+cozjAp0ra7VgZZyTc=;
        b=M9dIVbUvtH/qqLz8bLxC5glc8qz3x9ACGTJf9gFsevE+U9awIUzGrf+cuT1zDuz4ua
         OzGNYKQMtGxzl6riaCM2SyvWvvJUl7gI0a2vJTHg2sZvSrY6nd/pM2AW8nyKvT3LlAns
         nlXP+WXWwpQdzAxqStMZkCQ+q6OQyV92pzyYsRxoAWd4ACBs1kTl6juklHG1GLynPqXi
         NBHNyJVu/+53ICIV/vhMyPpJ2J8nxGqfw76k0fzufYFeQ9N4yrGeXMZu/c3zF+TzlVf9
         sOeV4JLGRm4g/6uh5i1nnKZWQfO+rupSdFnqZrbBgL7lm/crc0UdgwC6ExhWnjKFZicG
         kePg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726188028; x=1726792828;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:to:in-reply-to:cc:references:message-id
         :date:subject:mime-version:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OrbG0pQovEEH/6t6XiVHWTJi75KFYjiXDktc/IDup80=;
        b=pLBwKoQ2RpUBcqXOb4qspxmcVcH9+BGVFMo3+jiGyUjVfI47ULbVmtHf7NkmmfpJlh
         W0V4oC3yBN55CxR3SzfmQrvPdYGazYxp5s/Klsjc/6V5NN7ioyy5hI8RML1GnrPjhmKf
         ujj9mdBgBe3lXCGQuJJ/FuPj/r1NBWOHBKbqkmgXmEPmHBzDicOXYQYjrAO3jV5BYvNp
         RENzi4Ak1++6Z1ZHqLnUTUdJrTfS1yPqOuW3KRggdKowOZDo4OKJZ88nty0aW3O+t0dj
         2t13EVv2P5DXSazArCpr4nuj5fhGpja1+YdzwPFdUvm/zDIFi1hUDoMU81q3C20XQjac
         EUHA==
X-Forwarded-Encrypted: i=2; AJvYcCW46iVgtaIPTkXuHqcUtx3fGtoW13Uvqse0NkO12LhyGZTY4fPsXkZngaU5pyTcca8in/nT6w==@lfdr.de
X-Gm-Message-State: AOJu0YwVw2Zss7IFVpP2rhI69AP3TsB4EVuVhw28/2IUQs+yHDnmia/v
	+oYm5jRynMd+XRcEFch86vA1x0V+S2f4g8OvMQP+pNk6LtNMvucKdAyBoYIwJkc=
X-Google-Smtp-Source: AGHT+IHcXiiVoJy6pfncOds5L+KyyOY5wxKtgzpWI3cN7GQOPNW+ukkOfqwPFBIEFQItLO+PbZMxNQ==
X-Received: by 2002:a05:6214:f07:b0:6c3:5f4c:4ffc with SMTP id 6a1803df08f44-6c57350c811mr35556376d6.6.1726188027316;
        Thu, 12 Sep 2024 17:40:27 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5d4f:0:b0:6c3:62ce:cbb9 with SMTP id 6a1803df08f44-6c57332be89ls22578106d6.0.-pod-prod-01-us;
 Thu, 12 Sep 2024 17:40:26 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVXl1JxHPRwXaCstkkd9OFB/GxUuN+tHlH9i+U5ha/HtGZOCFT6udnQRwwCrXgjrSkZ1MnU/Nv/3g/QQA==@gapps.redhat.com
X-Received: by 2002:a05:6214:3b88:b0:6c1:547b:418a with SMTP id 6a1803df08f44-6c57357955amr58908876d6.36.1726188026200;
        Thu, 12 Sep 2024 17:40:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1726188026; cv=none;
        d=google.com; s=arc-20240605;
        b=KIModbhhvE055FwvJgx0N65rqJ5+wsklsRyQA+4ZYKntphCIfboOCq++Hwvq9TaYty
         I3IlDfc6Ggnp0ut7Ixnvky408vmRj96zH+QHi+8KNLAf5yOp6osHtI458MrrMTlzt7gd
         QtjHOGmckkPTvwt9x9lnkDIR9v8uUJcKa0vcnPPduJGp/5OAiKFgrgfaD2uREFeZQyMh
         ygV2DVejjQHjLKASmQp2nqCh8ZVqPQioTvJQc/XOUjwcokqCQVrTs5FFn5eCSaz1gs53
         xWAh0+gZSCf27uK2kz2sjpKfdC3fUENZ84/L6+UL4TxyQkHqvlV+OSLN5/4o2bVtRigT
         /vWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:in-reply-to:cc:references:message-id
         :date:subject:mime-version:from:delivered-to;
        bh=3SQ+FjP/hNjTNi2UpwEyIyfZrAXoSCoe45+q8MyFw4I=;
        fh=fB4bhaz3ZgeLTF1bnGxXOyqGZNz05vRO++ltXEEHqYQ=;
        b=YNYrk1ywy/lexwcHyEbRYWJf7KO/XZIMc9lXmxJxP/MQWI9OZjTZs27zIZZ1W2FCbK
         GqF3qvPXGeQdoFGTgMhI+v+BIdr34VS8BNv8AnM45yW+A84a+z8/S6kcFV0J6BBFaDDl
         K3xrQOqJhFwmgQlJcF52Ym6wxuljQfyDpef0idkGo2jWPhY2VvHB/OCdfCLNB6Xd8Blw
         vXu2SQ66lZv0s3cGMcSNeWez2QiOCjgVrvAS13qVI4BPs8euCjXVLXScUU+UAKTA5qWk
         +8fck8nJY9LjDaaolq4u2jRMibUBGmJbODk79ReBNEMjRfZG441jsNETMk/D5O/olt2h
         kDgw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6c53477022fsi141415036d6.203.2024.09.12.17.40.26
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Sep 2024 17:40:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-642-wJoXf1CmNAullN9TDIWtOA-1; Thu,
 12 Sep 2024 20:40:25 -0400
X-MC-Unique: wJoXf1CmNAullN9TDIWtOA-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 426081955F44
	for <blinux-list@gapps.redhat.com>; Fri, 13 Sep 2024 00:40:24 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 3C5021956056; Fri, 13 Sep 2024 00:40:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 39E1C1956052
	for <blinux-list@redhat.com>; Fri, 13 Sep 2024 00:40:24 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CCC661955F44
	for <blinux-list@redhat.com>; Fri, 13 Sep 2024 00:40:23 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-351--Ig_5kBbOsy3tlSp386CSQ-1; Thu,
 12 Sep 2024 20:40:20 -0400
X-MC-Unique: -Ig_5kBbOsy3tlSp386CSQ-1
Received: from smtpclient.apple (64.67.55.137.res-cmts.pls.ptd.net [64.67.55.137])
	by mailbackend.panix.com (Postfix) with ESMTPSA id 4X4b7R4Hf1z4Prd;
	Thu, 12 Sep 2024 20:40:19 -0400 (EDT)
From: Jude DaShiell <jdashiel@panix.com>
Mime-Version: 1.0 (1.0)
Subject: Re: any chromebook users here running linux on chromebook?
Date: Thu, 12 Sep 2024 20:40:08 -0400
Message-Id: <D07FDE44-4965-4E03-A5BC-2F1D56D30101@panix.com>
References: <9112fbab-7e89-0e6a-71b6-339624c6e0a6@hubert-humphrey.com>
Cc: Rob Hudson <rob_hudson_3182@gmx.com>, blinux-list@redhat.com
In-Reply-To: <9112fbab-7e89-0e6a-71b6-339624c6e0a6@hubert-humphrey.com>
To: Chime Hart <chime@hubert-humphrey.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

normally in the tdsr directory running pip install -r requirements.txt woul=
d get the job dne on other systems but not on debian. a whole bunch of addi=
tional steps are needed and since on this chromebook I can neither do fine =
navigation or flat review the terminal with chromevox i can't write the ste=
ps here.  what I probably end up doing is power washing this chromebook the=
n donating it!

On Sep 11, 2024, at 9:42=E2=80=AFPM, Chime Hart <chime@hubert-humphrey.com>=
 wrote:

=EF=BB=BFWell, thanks Rob, your suggestion found no packages, however, an a=
ptitude found 12 which have that in its name, some are doc files-and-most h=
ave an st after pyte. I suppose I could just cut-and-paste-and-install all =
12?
Chime

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

