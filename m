Return-Path: <blinux-list+bncBD6J3OOK2IIBBYM36OVAMGQEWWM2WIY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0F77F3263
	for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 16:33:55 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-41cdffe4d1csf68366851cf.0
        for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 07:33:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1700580834; cv=pass;
        d=google.com; s=arc-20160816;
        b=dHjKEwTl+2B3swArPDmSZ4Sp7PxIrPjMc0sqEAryJ3Qabhx1gRl+pMEHP+NaumJfLR
         y4ChBX1Cwhg2N1zHGAU15g0msyond+bU8UgAkrLhwyWHd7CkOPd5EkW70tuTW6Ugms7M
         u7W5lOgUHZma2Yd5ufC95y7sdBXkXRYqaG07HO2V8lJx9+tWeBC9ZLzPIC04Z68uyC5z
         DQSki1DQVPcXZRyK+6MoAKpn9M4nz1TFZYVJknm07ZtOgkbOEuleZp/oVyGAHXsAvtT4
         7Ap4UjYwFt3w6O2W0qLssfgIpU9REgnzUZ6kboGAv++jiopxYm7Y9fpHx01BS7i1N5JX
         tDZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:ui-outboundreport:user-agent
         :mime-version:date:subject:to:from:message-id:delivered-to;
        bh=vGaf1cS+B49wwtLyFXBmMx1NAtn3DClfQ66Q7pAlT2A=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=FtjBamoCPYedUKNPIKH8fyVZYLhU7ZByte6AQ0dyP1QfieXH5/cuY5/AG3T4ReCS3Z
         ORjRSp4Y3i2lyg+s2/U8OhC32Oc9+3QeFFK6qeKGV5a0QZYFFSxdkMInn3W3Tq5CAsP3
         RN0k25x2rp1dKr5wkCJDcUk1nDAAC0fJM8G8rSkHDZvbBQoOL2tVAIDAM98LOcilRtnn
         L0zkY4oaGo32Ft7tr8cNlogUjWXwlBFItorSiH9YW+7xfmt1byC9p2bb+H2IUR000bwS
         ub3E0r4ifXay6vu5J067n+3mLqf48Y0UyEUmZWNGEeWeK59L2rtQNM7ieWWH6asCSMDH
         3kyg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.17.20 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700580834; x=1701185634;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :ui-outboundreport:user-agent:mime-version:date:subject:to:from
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vGaf1cS+B49wwtLyFXBmMx1NAtn3DClfQ66Q7pAlT2A=;
        b=JMMpASoDHD1IsEUZ5q+V86/ostnMmU8MrR+eaib9gXmInpmiP8c+OZ486UNpfIauIo
         PbZhrIHR92dH9ZDIMGCF/3tqIz7r4uXC5VLCGqzXnWf/eKt8kRHLMNwqPSxnxq1YUoGH
         TQw2OC6Q3Kk/X6fet34bPeLNTr7a/KLPTfV6dRgFlBeLrWk8pvKgbtAmq/1OUAJ652hE
         nRoM1VUa8iqhFVUoBQDCm9KD7A+YFfj/+G42J4ILuepoR6jOc5mzt8p5SY5JKOOP8jpJ
         h1AvYW/S//saIBJR6FyD7306RdFxJxSW/KaW46UZ2p396g6itF8FiEdaDvmSWrfwwjMC
         d6nA==
X-Gm-Message-State: AOJu0YzrrKJFjsiQYTSuK8KCF1RMdsioHC1oQOyftDgW0HywdX4eV20W
	nWeZjIKF45WCUs5/lKN3v41xEQ==
X-Google-Smtp-Source: AGHT+IF+xNz2MGeqUkBlPR0yq0VyKCFyt7R26UvdUPpUqXn+9S1VOEWkU2omDVl64g/jNvcIsSoC/g==
X-Received: by 2002:a05:622a:1393:b0:412:395c:e794 with SMTP id o19-20020a05622a139300b00412395ce794mr16237866qtk.50.1700580834143;
        Tue, 21 Nov 2023 07:33:54 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5d12:0:b0:421:c71a:9295 with SMTP id f18-20020ac85d12000000b00421c71a9295ls1781514qtx.0.-pod-prod-01-us;
 Tue, 21 Nov 2023 07:33:53 -0800 (PST)
X-Received: by 2002:a1f:da01:0:b0:495:c10c:ec39 with SMTP id r1-20020a1fda01000000b00495c10cec39mr9096586vkg.2.1700580833550;
        Tue, 21 Nov 2023 07:33:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700580833; cv=none;
        d=google.com; s=arc-20160816;
        b=QpGxJyMezbeJ7ut76uKlufJHdkJenw1FHMZ5Nc4HxBtz3OiZ9MAaJRnyuNJ6RNUi4z
         DpuO8pM+a8scgOMmrxVy62KhRk8UvG9GjA6gQoL2Dn4FhpTE6b4uke6tzpRm8EDctD3H
         Bb9zPtr0j67EvHuDmxf2Cczt1/8vhD8WwiWlt3/JTIrJQLIXaM6uiCJsGijfmJa5UC47
         uiOVUX4CLX5Hbz4baiTOrhs7nYN+HINfwZG4CPqai8W86GODV5GLCgACIDXw8SDdTWlk
         1NqhQl9jninjnNqLiNW9vQJwO5hKbH0tBpwUu+Bb6HBlt2At4nWfbPfr64w6UzaifCTV
         ijjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:ui-outboundreport:user-agent:mime-version
         :date:subject:to:from:message-id:delivered-to;
        bh=vPwIHXfrN9NKBt9SGYA+h7MPSewSpwP06bLWfYLFlPo=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=wZ/zj2jIkKCd+io5vL3Vr1qMmtfi15Pwq8zDh6IejxWDH7IYxgVZ0kniIbwpR6Vifp
         JLrd85LVioMeGCoj2XpnUnSHrjApGXanIDp5sp/SoQQ3IewC4WpzziP52I5A6PkIsBp8
         rhOhbi9rkTuD/K6yJKhVQfBm8yK21IDv4iw414QBTPuyxLfXx7mWoFUpQIEvxb1Oq4FM
         nDRkYf8pC+NhPtuXKVsaG1OqWJSsQctG31bFc5VeULCMsy16n9B8MR18uJ0GpMfvan+3
         dvhqoULEByEDkirBnBSm52v4/UdlYyrF2pdqb+6a/W0YCCcYHvQipXQgif2gBqMMsJ4s
         bQxg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.17.20 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id d6-20020a1f4f06000000b004b03b90e0f0si807226vkb.70.2023.11.21.07.33.53
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Nov 2023 07:33:53 -0800 (PST)
Received-SPF: pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.17.20 as permitted sender) client-ip=212.227.17.20;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-617-z4pl9sKWMtW3bdd8dL0ykA-1; Tue, 21 Nov 2023 10:33:52 -0500
X-MC-Unique: z4pl9sKWMtW3bdd8dL0ykA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0B91185A58C
	for <blinux-list@gapps.redhat.com>; Tue, 21 Nov 2023 15:33:52 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 077DE2166B27; Tue, 21 Nov 2023 15:33:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 004E52166B26
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 15:33:51 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D30CC85A58C
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 15:33:51 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-76-k4WAbbv6N6iWdLNMR1k5hw-1; Tue,
 21 Nov 2023 10:33:49 -0500
X-MC-Unique: k4WAbbv6N6iWdLNMR1k5hw-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.100] ([208.107.97.40]) by mail.gmx.net (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MV63q-1qw4p00sy6-00S3Gv for
 <blinux-list@redhat.com>; Tue, 21 Nov 2023 16:33:48 +0100
Message-ID: <20231121.153445.633.1@[192.168.1.100]>
From: "'Rob Hudson' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: blinux-list@redhat.com
Subject: Regex for spaces
Date: Tue, 21 Nov 2023 09:34:45 -0600
MIME-Version: 1.0
User-Agent: POP Peeper Pro (5.4.6.0)
X-Provags-ID: V03:K1:VlxZyJPKUU81U249B4GCSIjdiagjU6Jcp/bnALioswdP6q1UL/I
 di9ouBlCweu3FB3qBE0WMqTkOfQzvPPFoBWMcK2If0Jmu+9uN5B2EYVEJJsdnmikRZ0OLzM
 5QmFSUkYeobj4BpuhUEtb9EdYQkreuGBO551aZDiDEVH2W3Y+vouoEw2XNkYrdljbo+FTQS
 GArwnVIP76gvm8e+DnwQQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:MpftabSEtJc=;Efmc2EmFOzQ1AF1OfbUuDVKcQc+
 0ZR3Ci1Tnrmcf07rQ57MyKcQTFxnsBUtnlathpFsFHgxEFQYlhdK99D5DkrNzzi9QSaa64KCj
 tPge43tOQA2EUNlhHDbvDtQAYeZhxsNUeFOr/oCU8OMIAENp2tWvH7UP3nIYq4SCUYM749zaE
 yBHQuOMOVDSLGLSqvCmJR2+R41UDkDGVlaXhM2X9QOwUou7XOZ5PLVwhwGUPG6Fyoq7DPcxTB
 oweXbEtvVvfAO0p46ecV5AvE+b+6gOBnAliq7laCfd7C3TkgZRLaa6AMq7qSNcOVjTD9lrcJ2
 Xh8p7rbHW8k24CR09XZw0wQNm9i56tLhmqsL/oiLYhDRY0YI7egZl33UkA5eRoFy2jPqc/YaC
 /H+kxJoZ8TD9AKoe+fMym8MJXIcOIYgjotWSq4JBmzkFuIuCvz8p5Rgj3reUvCx4cB1iYCsaG
 3EiqNo73frXoM5LGZXjx8M/uTa6O7urc/1qxhtohAoYnDCgALBGDLSt+/f0K45uDX+RSAl2hD
 yVDnki4TXIbpZyInDtrpq3RQCBzAZAQ6PG95vbsKl8KtRPAHItnxm2XmHYT/URezRCkm7TkV4
 noKQw42B/Wz+7uhOryWmCDsv04TUDtYD5h9isCa2iD3FRYbV3ixH+F53nozyCx8Cs+7Yki9jn
 WSyOiWAgKVy/fpA+kwuE9O3yXW3j/6Aerf78YQxqbh3nLEuwTRHFGZFjSxExp6vOg6F4BL6e6
 8T9Pq/Gyets/U6QXqcFfiPNSQvFBvO3xBXRGHw/sdqdoOrEBaq+w20i+UD1vUh6qB7opVFcBA
 7VjZK4PD5RjZ/mo1tNMCZ6hOjOqkgKE5wWdQ948yzdwGhWdHUfI8ylLIWcsMyKW0wud/G7DEw
 bIVqA78Mc6psKWz4hxh2Vxy6faTFwmlhhxy2Tb8015TquhO0emKREHilKHksEenb8k4XfQ2l6
 7nPYM8WgyeVWOZbj12s1HRi4Vw4=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rob_hudson_3182@gmx.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rob_hudson_3182@gmx.com designates 212.227.17.20 as permitted
 sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Original-From: "Rob Hudson" <rob_hudson_3182@gmx.com>
Reply-To: "Rob Hudson" <rob_hudson_3182@gmx.com>
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

I am not good with regexes at all. They give me a headache lol. Can anyone supply me a regex that will remove any trailing spaces in front or at the end of a file name? I use the program brename:
https://github.com/shenwei356/brename/
I have a regex to remove double spaces, but now I need one that will knock off leading and trailing.
Thanks for any help.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

