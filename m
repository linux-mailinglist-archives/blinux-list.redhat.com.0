Return-Path: <blinux-list+bncBCFJ3VNT5EIBBP4Z2LAQMGQEFQIV4WQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mail.lfdr.de (Postfix) with ESMTPS id AB419AC428C
	for <lists+blinux-list@lfdr.de>; Mon, 26 May 2025 17:46:09 +0200 (CEST)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b115fb801bcsf2674443a12.3
        for <lists+blinux-list@lfdr.de>; Mon, 26 May 2025 08:46:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1748274368; cv=pass;
        d=google.com; s=arc-20240605;
        b=LV2d6BWPq1ImrP4QLUiM72mVYZ16TVb5uGMQmgFKHdTNTbafTCeySlEJilhxH1+pJ9
         ddMkU1qnl6yoEaV8sZAtLbkuOws8vku0hkm1Um/RJUqyIsr2z/i+oF/yvh85hSHCV5sh
         lUweKgh1ovB9DXQYGcrmKEDjDHKWiVzOnoYo/KUPjLlv/vmRvMroeeBuSEZr5NLV6Nv9
         AHZbOX6jn0Hko4SGH1+6MKpqoVxySNeOIKide/VsL06Gxh/yNdUaTzHQvQc5FpRzfGQn
         jY8n2UzogqhLdNL49Z7J0xz6qkXzNLn6ZH7fhxaf3WfHt0xQkPzgQm1KF2Z9fbJ4RH0+
         oH9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:message-id:in-reply-to:to:references:date
         :subject:mime-version:from:delivered-to;
        bh=lfb6evnnb2Tp6O5KXit6XvR1Gb8y61hj8+00TPhN5S0=;
        fh=SNAJonEJzEVF/fqZ0nZ1H9WFZ5uqiPcgYzE1UG2RtMM=;
        b=Xv489VKucBNMH9vXZacll4345VW11eeKYx5RR5iRmcs6eUTk1nce3uNT4geazwP8D3
         i1HR9rFaHa1o7bffksvLvUm6rWArfKMefy4Qk3F2P6Et+vUQeW+RzbhqAwoKWrdw6dcm
         Z1lZt+yGRoM8yLzRn8/JbYEJSXGSzHKuYQ9hFt+6GSYY4qSxYNl9BAzbY/oGm9/V/ymM
         66YCa0Jnp6tKHsZQZ6UH3FVIPRmXBylW8j9qhhpW10Zj9lxKSovGzfeiiqihr1YxlZAi
         GshSERCKjKNQTe3TCEf21Bb/2QgB+mcL6u3cky+8qKkfspeNC6WqGKY7C7OiXzF4gKQv
         YpBw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.219.175 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748274368; x=1748879168;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:message-id
         :in-reply-to:to:references:date:subject:mime-version:from
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lfb6evnnb2Tp6O5KXit6XvR1Gb8y61hj8+00TPhN5S0=;
        b=BkgTTh0LWcSp+13yfRlFg1gr0b6j70Bi3ZmTyKyd164t7vD5fdF8S72Sob79D6yoOl
         zeRPIr7pwdx1zIPbsCaClxH11xua6PEsREkKK7alELtb6T06avN4pg10eknBqy8OCqEH
         NNY/2yw0PWWDC+7b8ur/QqkC9u4DfyzF+Gi3Qc19stygUvoyox1j4iPEg3jlmri4D2jz
         wx4ft9M0mRZN2vLiIMRDxya71xBvHsLkuZ1YlsKEaMI1/c/9IbDCBcHF3/6hp9VcV5+r
         /eo/QJ3HuYP1awzCQdTSE5CVPASFLrFqn+js8h55hR7dijzJePfe5aPBYr7JWSogsF8i
         jY/g==
X-Forwarded-Encrypted: i=2; AJvYcCXnOjYDL4qDoH8P8i1nXOUoytg8yLsxdDGd/nf2jn7D+nTS3rD34jZhrqlumCBBNDw1/UCtlg==@lfdr.de
X-Gm-Message-State: AOJu0Yxfvuk7Gfet6WmAdhoslQBuybw4beepn+gpMesMaeShiSFd0GIb
	P8xH8kK09uSh8BJ6/E9vRyMO4qUS7jBCwcSMGkQmocHYaUg35XD0dc1ChU6Cu8yacXA=
X-Google-Smtp-Source: AGHT+IGRP7POH3bupjG4J9rD4EuX5eSB2Khd5Dn4f+om/u8MCqbrbD0mUlkqFK7LH03wprklaVdLxA==
X-Received: by 2002:a17:90b:2e4e:b0:2ee:d024:e4fc with SMTP id 98e67ed59e1d1-3110f72e2d6mr16430751a91.33.1748274368001;
        Mon, 26 May 2025 08:46:08 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZcAMcn0DYgP/h8hD/E+3n+goOAlBfSQ0ZIhk/N0lILbYw==
Received: by 2002:a17:90a:bf10:b0:310:d27a:fca1 with SMTP id
 98e67ed59e1d1-3110aab19d7ls1143641a91.1.-pod-prod-03-us; Mon, 26 May 2025
 08:46:06 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXPssTuyYelDSYwGxIpngFXPk5wGjKc5HPkTh86nTVi0nB7AakLcL1H9JA0hWxPPl8GW4F1sLa0ybVgUw==@gapps.redhat.com
X-Received: by 2002:a17:90b:4e90:b0:2ee:5958:828 with SMTP id 98e67ed59e1d1-3110f0ec405mr16701523a91.9.1748274366371;
        Mon, 26 May 2025 08:46:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1748274366; cv=none;
        d=google.com; s=arc-20240605;
        b=gutnKWJKFgnGxQ9gsc9yFYVtklKIyQfT7sc8nqXkl+hQDziPoMYcES1JzwbJYS5aFk
         lIUmMjKHPhChxTgSsS1kzbNoGLMbhFHeYx0I++kp+ufJryGYXdvN9BIJ9w73q9LDuNW4
         kFfqNpd6328rPuW79vqOqkIqYOI8FOdMO/R9trziDlB6aMhoSf1gNux5tVYf2V9tr11U
         EOpaXPSrcsn1zioSm/z1lvI9NGe0UA2ELpOhMlfjXPP2QUFILNQhdQcaqIh21huu5Hd4
         w30fw5IJ0V8s3rMaAv+jk2GTAKN+3RajwYZO8lMUlxN0SQlyA9snwsz6VsXzF4aTqGcB
         i/4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:message-id:in-reply-to:to:references:date
         :subject:mime-version:from:delivered-to;
        bh=WN/40f0zAT0I90D9ZQuxE3YXgpqD4JOIkhKIG5wWdMY=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=k83EwTJmssA03eNr3RwckKB2HEFCnwIyOaPGdNtzAQWGP9Dip/cdx1mi8Fuc+Nn/Zy
         cBYyZ2V08Njm28RONX5BmOwhtTaeGF4u/fHHTs98P+LolXiv3B8X/UIEAGroo5S1q6xP
         Kxu4O9sjVtUlUPE9b0mXi8JpglMmgsZo6GzGt+grDBVby+gtRd+lmwYuubSbupPdGdzk
         SmT+hJIsB7tNL1wfXmFr6piMRrcLNWPD5RRNxpKHRwz0x89ttFev6KUAmAkl3WfbSMZ0
         zjmztSakffeNMwp7J0CVC9wnbolJ9LT1ylmxVupWLeR9yL6hzw4fbG1tHwiGzmIkPmEV
         L3eQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.219.175 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 98e67ed59e1d1-31122d1e83esi6734794a91.72.2025.05.26.08.46.05
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 May 2025 08:46:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of dcrone215@gmail.com designates 209.85.219.175 as permitted sender) client-ip=209.85.219.175;
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-56-IzQViH4CNoqgF4SanZGR_A-1; Mon,
 26 May 2025 11:46:04 -0400
X-MC-Unique: IzQViH4CNoqgF4SanZGR_A-1
X-Mimecast-MFC-AGG-ID: IzQViH4CNoqgF4SanZGR_A_1748274363
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6F3BD1800361
	for <blinux-list@gapps.redhat.com>; Mon, 26 May 2025 15:46:03 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 69CB419560AB; Mon, 26 May 2025 15:46:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 672681956095
	for <blinux-list@redhat.com>; Mon, 26 May 2025 15:46:03 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D8A9219560B5
	for <blinux-list@redhat.com>; Mon, 26 May 2025 15:46:02 +0000 (UTC)
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com
 [209.85.219.175]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-632-nRQ5i_OoMt687fTR_jIe7g-1; Mon, 26 May 2025 11:46:00 -0400
X-MC-Unique: nRQ5i_OoMt687fTR_jIe7g-1
X-Mimecast-MFC-AGG-ID: nRQ5i_OoMt687fTR_jIe7g_1748274360
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-e7d5f3e6169so1422649276.3
        for <blinux-list@redhat.com>; Mon, 26 May 2025 08:46:00 -0700 (PDT)
X-Gm-Gg: ASbGncvf7jzPO2cKWncdOh7pioiSNCDm0p9Un6gR/oNg9ZSaAJP8a9TY08JuCjH5j2Q
	ydZrPNUaE4rYSPYVlIURSbvfx9lov1RNhxcbHaO2Ov2VfEsthDobgiQxAD20kNErwVgbGhLcwVj
	85Pvr0XVdlr8WnKMPCjBPuuwtjsPGlguHA97knZKTLBG7TozRzGaHbhj+zK2emeMud3IiPCwEou
	V03RjIeAqgHkjIDVBM2Ijnouztrk1fuheRLqIeK77kgawRfEakGrz58tyNCGjt8dXgBCgkHcT73
	yaGeEIdnU+3wTwjjkHVJONRwdqfbuh52Srv2urw7sfeq+v7/g8IST/Us/4aYzK+tw2+VX4ZH/yl
	PaDTn7rE=
X-Received: by 2002:a05:6902:630e:b0:e7d:8d0b:1ec9 with SMTP id 3f1490d57ef6-e7d9187c96bmr8181970276.16.1748274359924;
        Mon, 26 May 2025 08:45:59 -0700 (PDT)
Received: from smtpclient.apple ([2607:fb90:d197:b92:886f:ad60:d559:f719])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e7d8ee12f47sm1725270276.22.2025.05.26.08.45.59
        for <blinux-list@redhat.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 May 2025 08:45:59 -0700 (PDT)
From: Daniel Crone <dcrone215@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.600.51.1.1\))
Subject: Re: pi 400 jacks
Date: Mon, 26 May 2025 10:45:48 -0500
References: <43F65162-F8CB-4545-B208-D0A9AB9B22D8@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <43F65162-F8CB-4545-B208-D0A9AB9B22D8@gmail.com>
Message-Id: <FF1D7606-22F5-4183-96EC-89450E31F492@gmail.com>
X-Mimecast-MFC-PROC-ID: XiHI_YIVpijG-mvmXPI3hsmp_f-cTEz0kcjUMZDptPE_1748274360
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: KlYzSq0SjpOMlbihkg4LbhobsR867hylj4aAmXJEX7g_1748274363
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dcrone215@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of dcrone215@gmail.com designates 209.85.219.175 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
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

I have figured out that there is ethernet, three usb a, one usb c, and two mini h d m i.  Am I leaving anything out?

> On May 26, 2025, at 10:37, Daniel Crone <dcrone215@gmail.com> wrote:
> 
> I have a pi 400 which I had not used in a while.
> I cannot remember what all the ports are for.
> I know where the ethernet port is.  Might someone refresh my memory?

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

