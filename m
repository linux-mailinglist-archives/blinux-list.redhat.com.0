Return-Path: <blinux-list+bncBDM5DGHN5MHRBJXEUO5AMGQE5JRCFZI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5EE9DBDB0
	for <lists+blinux-list@lfdr.de>; Thu, 28 Nov 2024 23:43:52 +0100 (CET)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7b35758d690sf207916985a.1
        for <lists+blinux-list@lfdr.de>; Thu, 28 Nov 2024 14:43:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1732833831; cv=pass;
        d=google.com; s=arc-20240605;
        b=IPIKdCn5qyKxLzA9v/J1EZR3Qg7meaxNElnysBw/piFFDuLPOiXiM+QR+QTsrYDG86
         Alkg0ezp3zwI+mNRWgfM34hIx4BLaKfXFLt+xlMGstPnxlDJz1YKFEYL3RuBXe9HV1qo
         c2i51ZzzWT0f0JPGN76NnVNKAiZp9SSXi1rYipM901qvp7wDfLlwR93+AzRDJf0CIqbm
         EUmtPzzFlLCumhhOzSGIgclP8oYAX26JSAD79MP4MWzXRCwT31u/Q/MqlBxG508C/Prg
         dFTqiVmGE1Q5i0ZXYXjSasLOI/A8hJNDuU5YPwCnfbtVzBcMDA4kPD0pL00S0EsDsYjU
         OZ1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :subject:from:to:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=vVIVaRA+YS2eKGN4/mUrikvXXg+f+1t0wvt2sv0Oe18=;
        fh=g9vw9KjTa/Wa2JaUhxkEbH2ZoygsfbFzDiWuy8d38TA=;
        b=XG4x5PX9LCrzJi0qmdgUHTbPA0/3Z/IO6W0H54jbZ05HvzRxIL8k/5FTgVog99X8ct
         jW17l+NlUr+jXjkW1F3mwiF/cBKgn8lP3J8ms8PCQ2MB64AgU8WlVjnAwVi68jUPfjU+
         ysXZXYA5ShGPMSiRFCIOIlRPebO+QLfBSXCA+AnJRj+hDDiP0jZpmiZQAMzGt3beosNS
         xsM8n9dP1e7Uh4PffYYN+CE3jAve9nRCFRotygLhcD5lLMd7wcsFrjaJ+tSCee6Vddbt
         k73b0WfIwK10W7z1JCfdrTSZEgQiEV0ltYHIr0hvH/4Hks+0ve1+63CoCr/CQdzSH4UA
         bxLg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of ilovecountrymusic483@gmail.com designates 209.85.219.48 as permitted sender) smtp.mailfrom=ilovecountrymusic483@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732833831; x=1733438631;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vVIVaRA+YS2eKGN4/mUrikvXXg+f+1t0wvt2sv0Oe18=;
        b=kz0TKPSpjL5BrJF6XmBjE9KTvbAwSgA2ZPPyk2dVPMXt+LjKeq42FgpsS9aKvHqAxG
         FofvfzNWgV0piKZMuaF025uxWoyMwmKmcPWfU4Wag4VxT5ys86FhCwC8EJWxX622YtNm
         S8ciRBX1EBlcWJFuJRojdIIeBVvnUjdYwh9rlSPlX8KBiadDyUIHIphtg2lMgQFPyUbw
         Qz+75+ZcH3neqBGe6Ort1u6buXZmTZ19n0uCEYrPKWwm/UNajgiFC51rYqBM9ikYzmZZ
         YFRfyKjwXik3T3FNW113WRI62Od6PLbztDrvVOVaEYck3CC9W+nf6LYolFt/81/RJCzs
         wgeQ==
X-Forwarded-Encrypted: i=2; AJvYcCVCuJMoU1tzkRfijSBDKzKcNUONl31FT658Ehyh3lZTvruqzVtFBm7ImSsDsL0sZ/yoipixtw==@lfdr.de
X-Gm-Message-State: AOJu0YysegxSs8Tj9FYhM9PrSDGT24dOrVqWTPaeE7GGWJFU9gCl6VeL
	AKwAZa6owxFP/B0O/wfNrMI/nExhcSIE5TEtsPCaZAd37m50cwBgHSKaOylkj+8=
X-Google-Smtp-Source: AGHT+IHwF6LguzQ17FW0d9rioFgytXqP3H6fCry8sLBEXa+E2mxMUa7p9cXRRuWs9eIwVtBrA5f+tA==
X-Received: by 2002:a05:620a:6501:b0:7b6:7970:6522 with SMTP id af79cd13be357-7b67c45d62amr1304584385a.40.1732833830631;
        Thu, 28 Nov 2024 14:43:50 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:dae:b0:6d4:3b41:2941 with SMTP id
 6a1803df08f44-6d8728b6f01ls21968336d6.2.-pod-prod-01-us; Thu, 28 Nov 2024
 14:43:49 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVUp5o6PgbwIUGU/IgfXxHKvHSHHwcR9R5gGw4WK0eQcgYy0i4uo+eZ4gFMDTRV+YaEZnaICqV1nZ22PQ==@gapps.redhat.com
X-Received: by 2002:a05:620a:6286:b0:7b6:66a9:d98c with SMTP id af79cd13be357-7b67c2d1478mr1218247885a.32.1732833829508;
        Thu, 28 Nov 2024 14:43:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1732833829; cv=none;
        d=google.com; s=arc-20240605;
        b=I+5CrYZpcWYookgZrtVzDOaxtJS8fQvzN9+Sqfx51RCvnGEHJcxYXFwjThikdXuzL7
         1F6VNUVK3loVE+xhKUKGsTfsm5w+whtP/WwCWmECGSDfU10QgqDImOyhltHpaWPAqJRi
         TQDdLNjV6hdsrkatDy1LbBem8q4agoL6NPWqtkPWQMnhUtVosawDv60enNrT+037gbhE
         PrlEWUUD6gy3YRintzjnrudcVZ3mjxgXiV64aaEszoP+WVY1aTn3aRrHv+ybUPeSNXXI
         oCT+RbMyGYNfQR2A4jG4lOWsC/59M75B8iheuwLDOS/AwoKrvGHQuYkTJ7Zrzn04/Whr
         PUOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=LtYfG50i6ZSk0dQyWamRoQ10YSrEenMgy+gAv3O4qmc=;
        fh=B2DmuJiV9pRq99V6YNeAZMRAUSBOItuGA3AHcYXYTQM=;
        b=HY1v1pPSBkLsRDq1XXFyYGZCDuUk11AqYBeyj3C/NTElxkMuhRcoZa2PP0nKFGImoJ
         EI7GI8UGTehSVtkkUpYz6aS8ERA1PZO1bvvUJ5hS23iQbZkvPl9kiXqkDtZCqroyu0wW
         6sJCGWrOmO96OYHIVr5ljHQL9vfAOOnW6rVioMZxE0F8D5XOmaDgKoP05uGn6yCWUUA6
         1lH5WyYESIg+Us1jmBE4TY6zCztWagtvZ0MyMf7xkqTi8/TjJ/gqGO25h87zZXXpeNgp
         sp2ZiJcJdgUvRjlhRWx8ejCgvK6acN/OFeaX8f4TyOzrq1EQVTI3j//Rj6KkMG1Fb5a2
         q2hA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of ilovecountrymusic483@gmail.com designates 209.85.219.48 as permitted sender) smtp.mailfrom=ilovecountrymusic483@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7b6849f770esi264752885a.667.2024.11.28.14.43.49
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Nov 2024 14:43:49 -0800 (PST)
Received-SPF: pass (google.com: domain of ilovecountrymusic483@gmail.com designates 209.85.219.48 as permitted sender) client-ip=209.85.219.48;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-642-0q7_r2eYOsa0ve0MOrtw3g-1; Thu,
 28 Nov 2024 17:43:48 -0500
X-MC-Unique: 0q7_r2eYOsa0ve0MOrtw3g-1
X-Mimecast-MFC-AGG-ID: 0q7_r2eYOsa0ve0MOrtw3g
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 668CB195608A
	for <blinux-list@gapps.redhat.com>; Thu, 28 Nov 2024 22:43:47 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 45BBA300019E; Thu, 28 Nov 2024 22:43:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 43011300018D
	for <blinux-list@redhat.com>; Thu, 28 Nov 2024 22:43:47 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9E4DB195608A
	for <blinux-list@redhat.com>; Thu, 28 Nov 2024 22:43:46 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com
 [209.85.219.48]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-153-D6iTcwUgNQas2ZpB3mPhcg-1; Thu, 28 Nov 2024 17:43:44 -0500
X-MC-Unique: D6iTcwUgNQas2ZpB3mPhcg-1
X-Mimecast-MFC-AGG-ID: D6iTcwUgNQas2ZpB3mPhcg
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-6d41dbf6cfbso10249616d6.3
        for <blinux-list@redhat.com>; Thu, 28 Nov 2024 14:43:44 -0800 (PST)
X-Gm-Gg: ASbGncvEmb/HojNzXAmYctBhVr1TyydZMcWgHu3l3P3rTmeJJEaIa8nXIl6S5/F/tLa
	w+tbJGHJvIDZ+wbTThveHViOvvakFmlcGvHrOdkNB7lg6YzC65GhRpcYvVQK37e6qpCBA5uteYC
	NcXbpqVE4kcFz/NNOg5sSXYbQ9OgXLXsAbodwYMDQPG7goP4W+VVY9JxjsG90CAOSdKQlI16gzX
	Zki3MNkXn3CnHpQdPunmGu+KzqEGkHj+p/DZ9OJrn8Tu2eMBJpISadrnWICf65CD/ZTIre1sPv0
	y8nkdFRlg7U/k/+qfEBxbOUNlRu8sAPj75sQPpzezbJm
X-Received: by 2002:ad4:5aef:0:b0:6d4:3593:2def with SMTP id 6a1803df08f44-6d864d0ad6emr189990366d6.5.1732833823684;
        Thu, 28 Nov 2024 14:43:43 -0800 (PST)
Received: from ?IPV6:2603:6011:ba01:8300:1ccd:e8db:5951:af0c? ([2603:6011:ba01:8300:1ccd:e8db:5951:af0c])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6d875165f6csm10482196d6.25.2024.11.28.14.43.43
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Nov 2024 14:43:43 -0800 (PST)
Message-ID: <9d92e5fc-a61d-4e48-a758-d9ea7ab5839e@gmail.com>
Date: Thu, 28 Nov 2024 17:43:42 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Linux, Blind" <blinux-list@redhat.com>
From: Matthew Dyer <ilovecountrymusic483@gmail.com>
Subject: unable to get external drive to be seen after doing an ubuntu
 install.
X-Mimecast-MFC-PROC-ID: hvJnQcZ9zmlHaoeVlLkwdyQuQhNzZveB0mjdXky2g9g_1732833824
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: CB9XgpsMbhEqdMGxc8qs952d62WzuYLh4hO_Ndodkms_1732833827
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ilovecountrymusic483@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of ilovecountrymusic483@gmail.com designates 209.85.219.48 as
 permitted sender) smtp.mailfrom=ilovecountrymusic483@gmail.com
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

Hi all,


I am wondering if anyone has seen this problem before and knows how to=20
fix this.=C2=A0 First of all, I have 2 drives, one is an internal SSd which=
=20
has windows running as well as a fresh copy of ubuntu 24.10 just=20
installed.=C2=A0 The second drive has debian 12 installed which is external=
.=C2=A0=20
This is a seegate drive which is 1 TB in size.=C2=A0 I had disconnected the=
=20
external drive to install ubuntu alongside windows.=C2=A0 This went fine.=
=C2=A0 I=20
am able to boot into either os if I want.


Now here is the problem.=C2=A0 After reconnecting the seegate external driv=
e,=20
it no longer shows up when doing an lsblk.=C2=A0 How can I get this to work=
=20
so that I can get back to my debian system?=C2=A0 I need to get ubuntu to s=
ee=20
it so that it can be mounted to update grub so that it will be seen at=20
the next boot.=C2=A0 Any ideas on what may b going on?=C2=A0 I would hate t=
o do=20
another clean install of debian consitering I have everything going the=20
way I want.=C2=A0 Thanks.


Matthew



To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

