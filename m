Return-Path: <blinux-list+bncBCL5FHHSVEIBBS624O5AMGQEAJU77QA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 664F19EC1A9
	for <lists+blinux-list@lfdr.de>; Wed, 11 Dec 2024 02:39:27 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4675749a982sf62257431cf.1
        for <lists+blinux-list@lfdr.de>; Tue, 10 Dec 2024 17:39:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733881164; cv=pass;
        d=google.com; s=arc-20240605;
        b=aroKj3/MSwFUjRtPbD6VjrbMmiKlWa9LLqBahILQZqp1B9WybZIqXV3JypVmyoWyM3
         sJV0qBxmwlQEV0P8I4tv1NSY6sS4mQw/SEoFij7hdd0MXnTc/btloU9c4CVp+2rcl+7D
         o/DuDMaF3AmdTUp07XciWYYnGSzYQoj9TIBSQK76IIUUlZ3sy646mWB/gjnK98bnZx+0
         xA4dylEz/52LDDEoiPe71inHG2v3oqQEknv96Dc6ng0nOXTXR+yI4/JWpNnHFKwAv9CD
         Fs0tT4s/at/TOAa2RjYp4DPO+WrdPit2mZRZBqf1SxMpMpx+TpgkyiyeirUxjqYbRMtc
         rT5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:subject:user-agent:message-id
         :date:to:from:delivered-to;
        bh=NEWMpt/S2FleBT0OiCQRtFxZiVRhTJlf1kpiWkYZmDg=;
        fh=QLYzoyRbLBWxfKKqktQkII+wspZt4wqgAeo/jKYS0GQ=;
        b=SeB+ny39SNxmh/K5tU1P+7gCVa2pZArowsKTAFCkwKMdQ8W8oPId1YMwWmefNxmzKr
         a+YazahGko/sDDFvuKP/4283pIhSJttUXvHUfmOZ0DynC7pXF2rRdRHbEWsUHCHmRE4m
         je65zfua7h6VFMqGbSd8QE5FWuwrCbAGxbJ2iBuuuyFOZgCCqN61j3VzQSYoO+yEym3N
         yiLC7yJBy5ZH8uXHXF+htCy4CSEoAN/BKHB15pF2JSHToA3c/9ZUcTLfS8PPOyT478VW
         pOxUA9idYprHFu5gMzDQhlHwJfwkQ7hr6rmksIgxwh1HiJeshXSGuBi53AkaTd3H4siw
         jSrw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of mjonsson1986@gmail.com designates 209.85.167.49 as permitted sender) smtp.mailfrom=mjonsson1986@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733881164; x=1734485964;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :subject:user-agent:message-id:date:to:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NEWMpt/S2FleBT0OiCQRtFxZiVRhTJlf1kpiWkYZmDg=;
        b=BI4VFGqgVDK85hTp92OfFQhp+e8CQ/yLLdSrRv/A6i6P0zstqDQBhccIbBK9srNSPP
         fAtzbfwDVZIOA1ZoJLUzyJ9fGsTnJll1F0I6leZRCFzQNHdxEncnBX+ItV68iCjw2xKq
         vS6JvCVgHu08YgRRY+K74oT8JmIdicsag3DOOLAEfKYL3il+h+eM69QS7EpRZln1cd0H
         cwkpfTut7asLQfCtg8phoBrZ486J7pE/GMEoHVTSshm55v7igaag3D9rEEevNMQX7//Y
         kQc6I+uRGbk1uKjyiFkbxZZRYfUmw6E0pXKUOOexFJgU4C7LBvIPlma41O5oc6k6TO88
         V7pQ==
X-Forwarded-Encrypted: i=2; AJvYcCWyqn9rCXek2ucyHr1snVunWGgtnJLKwYB2qLGZRky9aX3tR0SyXuYsdvb6VIohn/h8e00ggw==@lfdr.de
X-Gm-Message-State: AOJu0Yxf/tyvHIEUVIubUq2/SxEVzSvua1jstmkgrpDu+EEPY8Y1GCyK
	A1z9xE+Rs1iRzrnpCou9coMtYX6sVVv5ViOg4D04FVWR1z5ebc39RhIfvsI1QsM=
X-Google-Smtp-Source: AGHT+IECba0y41a8u5BkEb54COrq1QiTGtaQm/ucXQwyUOBJYktmctcr/48jpOZEtAyWHhT8Ab2IxQ==
X-Received: by 2002:a05:622a:1444:b0:467:5462:4a10 with SMTP id d75a77b69052e-467891a0f85mr26304001cf.0.1733881164045;
        Tue, 10 Dec 2024 17:39:24 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1b06:b0:463:f0e:44c6 with SMTP id
 d75a77b69052e-46727aeddf2ls54262951cf.0.-pod-prod-01-us; Tue, 10 Dec 2024
 17:39:23 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVvT4Cm3rsNKHxKrLITMz9Bx2KiVw2YXhgmx1OjPxnMe4nouxFYRNlZupiCtQHNOK3TEhWYp0RygYZ9UQ==@gapps.redhat.com
X-Received: by 2002:a05:622a:558a:b0:461:59d5:e5a8 with SMTP id d75a77b69052e-467892db554mr21053441cf.28.1733881162819;
        Tue, 10 Dec 2024 17:39:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733881162; cv=none;
        d=google.com; s=arc-20240605;
        b=U/gEZjJoBTDz67hFaBLalKjdH5qIISU/xeDOqm88UpDtSWksP5d7XlnyByUvWx8ucw
         R+BmR97lIvgb+KVnkueon5RTsrK4okeJpfwlroUYYNYZ3XhQAuR/u3Idqjn9/OfzATt3
         3gXi6RxIuAXwOhExKL4UJYgkERoLdLdXtUOmsg9xKXVynZ432y1v3f2u2XPlDWKaq0Q8
         7evs6UO/yEQPKJMx3BJnXYJ/RbWSIkkjolTVm9Se2BfBkFwduZFYhHkQZDIHid/P4q+e
         hRwbHccxnyAOT3mb44Nv46Am086ZPEsRgDjiW5l9LOzJZswZq9NRw2WAg9LnoUoZya7g
         czFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:subject:user-agent:message-id:date:to:from
         :delivered-to;
        bh=MM0dTPGwxt+8BNyvPhCSCnAoA2hcKBjMoStg/R2CQ84=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=F/rJ8tZSTDPzVObC7J/qxWDEJzU6LEj4i796w97zoI2gMTkmpUZdzZrVHCp/iFcy5L
         GaNqTMvE2zJrhuZ/dgwcREzjc/igmFDZwJBQ08RhPdzbipqrYBb5D/c3tdE+n0QVeOuR
         PjcKaqkF42YLPRHrRm3E1b/WkLtuCst6tWXTs0VDkCQ3Al2gV1c/guYzGa0XoYzMK4Pu
         71V4Feqfk5UjXC2GKvVxOf4VstLCRCrj6lfd+0sdT40NLbEqjg0REx/MwQTFpkpqg1uo
         jtU1flDiCS1AyXxx4R+lle5vxDZU98MC1PNx1m4/dETG8EKxegy6h7M1fpNwnk/0tbgt
         Cddg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of mjonsson1986@gmail.com designates 209.85.167.49 as permitted sender) smtp.mailfrom=mjonsson1986@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-46781a27559si23586061cf.609.2024.12.10.17.39.22
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 17:39:22 -0800 (PST)
Received-SPF: pass (google.com: domain of mjonsson1986@gmail.com designates 209.85.167.49 as permitted sender) client-ip=209.85.167.49;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-215-sFYYB_e9OhOwzlhUCw2C0w-1; Tue,
 10 Dec 2024 20:39:21 -0500
X-MC-Unique: sFYYB_e9OhOwzlhUCw2C0w-1
X-Mimecast-MFC-AGG-ID: sFYYB_e9OhOwzlhUCw2C0w
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9C98E1955F38
	for <blinux-list@gapps.redhat.com>; Wed, 11 Dec 2024 01:39:20 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 98136195605A; Wed, 11 Dec 2024 01:39:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 954C61956054
	for <blinux-list@redhat.com>; Wed, 11 Dec 2024 01:39:20 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2C720195608B
	for <blinux-list@redhat.com>; Wed, 11 Dec 2024 01:39:20 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
 [209.85.167.49]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-318-gFdxAEFSM3K7z-y9zIUUYw-1; Tue, 10 Dec 2024 20:39:16 -0500
X-MC-Unique: gFdxAEFSM3K7z-y9zIUUYw-1
X-Mimecast-MFC-AGG-ID: gFdxAEFSM3K7z-y9zIUUYw
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5401b26fb1fso454887e87.2
        for <blinux-list@redhat.com>; Tue, 10 Dec 2024 17:39:15 -0800 (PST)
X-Gm-Gg: ASbGncsn2mt4uGpJJrHroS/xQcjELvo4iiqWsVsB1sQLvH2wx8f8eoFltHHFnfw/C9Y
	mPA9nDM8pOXKk85kzU9UY4YBi1Iyj8FPF5dqxpnapRr+AFbW6OEKlWjaFhMoI6iFRVKZXEn5ZaR
	EXvlIEdpLgRL9RNgrLJhZKiTEHPLns2T4YpeVXHXa7TyhKYufMwMF7oaOdimHQhmvBjldFR9eNU
	ShPYdcrE+P9TpAayKXBAW1m3MuIVbLBrfttyXJ0FZCEpgenFus0zpbwgsSoVpTRtb2aBtMAappA
	3svRl5mZiEZPlN8z8spWzQ7Y
X-Received: by 2002:a05:6512:131a:b0:540:20c5:463d with SMTP id 2adb3069b0e04-5402a5d7c90mr98193e87.1.1733881154326;
        Tue, 10 Dec 2024 17:39:14 -0800 (PST)
Received: from [100.115.92.22] (c-5eea6516-74736162.cust.telenor.se. [94.234.101.22])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5401796d426sm1120422e87.14.2024.12.10.17.39.11
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Dec 2024 17:39:12 -0800 (PST)
From: mattias jonsson <mjonsson1986@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Wed, 11 Dec 2024 02:39:10 +0100
Message-ID: <193b35eba30.275e.afbff0009b353412c733e12e23e6ae2b@gmail.com>
User-Agent: AquaMail/1.54.0 (build: 105400535)
Subject: crostini
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: deVw-9gNZcWGUfsfsJ_DnizzPQQa4yzZqevwxCpVwoc_1733881155
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: gGxX-5JQsWXfwRt0gGrRkyVI7H0fexc5mXcPqT21l6U_1733881160
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative; boundary="193b35ebbab800275e49d29e0"
X-Original-Sender: mjonsson1986@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of mjonsson1986@gmail.com designates 209.85.167.49 as permitted
 sender) smtp.mailfrom=mjonsson1986@gmail.com
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

This is a multi-part message in MIME format.
--193b35ebbab800275e49d29e0
Content-Type: text/plain; format=flowed; charset="UTF-8"

have anyone tryed one of those?
https://nashcentral.duckdns.org/projects/cros/tattle
looks like it uses archlinux
but buggy

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--193b35ebbab800275e49d29e0
Content-Type: text/html; charset="UTF-8"

<html>
<head>
<meta http-equiv="Content-Type" content="text/html"/>
</head>
<body>
<div style="color: black;">
<p style="margin: 0 0 1em 0; color: black;">have anyone tryed one of those?<br>
<a href="https://nashcentral.duckdns.org/projects/cros/tattle">https://nashcentral.duckdns.org/projects/cros/tattle</a><br>
looks like it uses archlinux<br>
but buggy</p>
</div>
</body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an email to <a href="mailto:blinux-list+unsubscribe@redhat.com">blinux-list+unsubscribe@redhat.com</a>.<br />

--193b35ebbab800275e49d29e0--

