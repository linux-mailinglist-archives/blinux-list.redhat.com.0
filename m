Return-Path: <blinux-list+bncBDYPVTOXSQEBBANCVG5AMGQEVZGBXNQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mail.lfdr.de (Postfix) with ESMTPS id F20BF9DEDA0
	for <lists+blinux-list@lfdr.de>; Sat, 30 Nov 2024 00:40:51 +0100 (CET)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7b677151a03sf258328085a.3
        for <lists+blinux-list@lfdr.de>; Fri, 29 Nov 2024 15:40:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1732923651; cv=pass;
        d=google.com; s=arc-20240605;
        b=HBye7suQlO++HuDwGUcTZoFPTDeDobkjnYtqk8mhu2yI+LzEHpMnDv88ibz9X5+RJU
         RSJR+ouS49JNXfGKR/HUPztcx372mZ4uStRQnsD6QShptD01U0Fn9GMhEwP5ahpW3PIA
         WAU2ngauM40UB6togrNdO4RLmLX4TDTnDgd+iS/C5xTaOecqsO8ZNX/RB5WLg3nY76+W
         XjtjqLySE38rtKYajsAPTAcViIvYxraMmb+uFsLVmsZn/gqUvgC2nu4x0jYDMvFO/vtS
         G2N1ilZm/mE+wLtJG+U38pNSuOh0vraTkI3fZPhhjNc7cXfIt5RiAVtrsxtIGX1pj38e
         3Zfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to;
        bh=8ucT3tWcH4cadYeXJWYoFYi4rxIIvxXfEVcWAJb30NA=;
        fh=HS6nSQlDQWtu1bG13gCFDu9rhVlhEBj8F3KFnpKfnZg=;
        b=Gv4XJRMaozFO5csgNxPylKoRvkKqyMPAI+92VJufjBHRaXKf5CWVTnuOTNYinrXKV+
         ugv/SBbXIpoPfZmz1+PQnLTn6XbUBY0UJ/QXCOa6oTfTqeAxDEpa/0eG8mwOZSZ/1DPu
         PL81QZFtCQWyb8IMiS79iW1iW1NNGMaFZkV2E0F2NTqvougYJ3n/CDT2vcG/Czh91jrG
         5uA/MwJnsgmEj8bF4LNwb6Fy4eVKNUdEtJw8D7oidoaDBn+6E4nMw+xHDJMVaIpJiy/C
         B3YmtYH8InhPKgKGGazpCKjpnu6ZTJcpCIlTDddVMr6oUEfZZtI6/L3TGgettdBnMAzY
         q/oA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732923651; x=1733528451;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8ucT3tWcH4cadYeXJWYoFYi4rxIIvxXfEVcWAJb30NA=;
        b=Zm1f4swVsaUASIiKaPsRIlsRBGToG0+Ckzvn9zfI1wJSbz68lYI2GgKpn8EZAoeJJA
         xysLOIqLz8hzASqGrQDv+alksw65TwY8xIKSgPJdzpYDA77bYj24fB+3L8eHSgfKpBWg
         vAXUfqmd4Y29iv1hbMiVVEkhC2wshEW/DfiVtnlYOo+CnVabaZvPx3fx+lCW4rkzFNpE
         gNABHRvQ1ws2qFBG10ELdXBI/mI7YX84TQoX4EOPgdaLPDncSK4Qal0nGMTqgOAoWF2q
         uGav35vD3fPIZOrKbDCLfLywzHDLy8cs8Xw7URcrNRzRGX0m/krqUFM5w8l9IfYVRo+B
         TmMw==
X-Forwarded-Encrypted: i=2; AJvYcCUD/tji5RURQCKSqDKejE1kdg7d8RAUvwBfHOMtMBGV3jXGYyK8+xgm0q+orQjcQhXEj5qqrw==@lfdr.de
X-Gm-Message-State: AOJu0YxDG3ubEoJxqAfI6GpPL5Xkxyxcdgsyv7qWHVNja+dp5+2k5vVD
	w+3jvHRFzGuAoK/b2o5j91Zewsh6w3I0ALvRRH8fmcDMqjQ2mYeyIZR6+g/O1EU=
X-Google-Smtp-Source: AGHT+IGgD5nxKe1LRtFP7Npl5bymf4Iom8faEJP4geDzjJ7zt4o82uQ0AGWN2dlNjp6nz3P+5+dG1A==
X-Received: by 2002:a05:620a:28c9:b0:7b6:6c2e:1fae with SMTP id af79cd13be357-7b67c447c17mr1818688385a.48.1732923650308;
        Fri, 29 Nov 2024 15:40:50 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:10e:b0:461:172b:9de5 with SMTP id
 d75a77b69052e-466c203d0b1ls34085211cf.2.-pod-prod-07-us; Fri, 29 Nov 2024
 15:40:49 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXs8sfiQRhitvTCYoygrgTV11e8Kn19oVtr4umVMI1W5+lgXpLkKql4V0QzTnQvGIMt49GiK9BrtX9iBg==@gapps.redhat.com
X-Received: by 2002:ac8:5a49:0:b0:466:ac9e:8269 with SMTP id d75a77b69052e-466b3646867mr225319521cf.39.1732923649092;
        Fri, 29 Nov 2024 15:40:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1732923649; cv=none;
        d=google.com; s=arc-20240605;
        b=e46q3rFFZ6xFHHvIq/Z2TtNwqF6nRZvMy9tqzRG/zz6Fb6HDShR0/wIfM+6qyTNoNa
         ehAELj9I37ox2WoH4cG1W3dpZWuT7T1e70lvbD89MOT5itjcTJkL7vSzPhXBGOUHLGM/
         WGflZiWKLNvi2drFqci/qBKzbEMAE0f/OjnDYTygzL8DfvSqWSz7Bw4dMHjjFDq/C1VG
         8igFzgib4XMiTmaSqtywetyjanOkr+eWa3zcOvBtogHkT2tPkk2aUg0jt/mSPgidZBPx
         b51ocHhebQt7bU3GTAo4La5x3wslZB59CMuOEqtcqwnYL5+RN1viLalg1VgSE/jc7Cq5
         divQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=gZmm1Wv4Ad6TgpHyRfu46qC0ftI0svwPZWQV8u6gyKQ=;
        fh=+syrJuqo2Y5Z+6DSmXe5T6TXDihhmp+qEEwn8dJzbrg=;
        b=khgoEo0NdV1KYIVR1W3t0wbLnHSefVyVPmS6sBM/7gtZXoe8USLYv+bRKcm3JHzmmn
         kmpHAHcFA62IWkTtiNkTJ8w+aWvSeyR/X5qdUUYhtFupGEZpSCDCFarBVT2vKxS8oEnx
         0h0PC3gN/S4xpWUYosu6Q4twlguv6wfIn8PJL3Y++sXhEM6omn6neudiZoWyAjvlxLsM
         Q8tcOy6mN0AJIo8ClsY5KQiiF3agYGndJ1mQJP/wHwBOTC6yIocuvzjlhc8Q27IbkajA
         ZmhWaVtAGoG+VnKEjsuL6UdQALcHz3APs28wLs1DNik7h2zhvXkzOiVdoehKL4VyObM0
         usYw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-466c4226e5fsi53968641cf.427.2024.11.29.15.40.48
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Nov 2024 15:40:49 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-463-m5PgKZ0zOs2oQdFw4N7uhQ-1; Fri,
 29 Nov 2024 18:40:47 -0500
X-MC-Unique: m5PgKZ0zOs2oQdFw4N7uhQ-1
X-Mimecast-MFC-AGG-ID: m5PgKZ0zOs2oQdFw4N7uhQ
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 23E021955D83
	for <blinux-list@gapps.redhat.com>; Fri, 29 Nov 2024 23:40:47 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 1E9D030001A5; Fri, 29 Nov 2024 23:40:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1C40E300018D
	for <blinux-list@redhat.com>; Fri, 29 Nov 2024 23:40:46 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 91DDC19560B5
	for <blinux-list@redhat.com>; Fri, 29 Nov 2024 23:40:46 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-347-RRHqnf1WNDy9WEROVkQtSg-1; Fri,
 29 Nov 2024 18:40:44 -0500
X-MC-Unique: RRHqnf1WNDy9WEROVkQtSg-1
X-Mimecast-MFC-AGG-ID: RRHqnf1WNDy9WEROVkQtSg
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Y0V6f0ppwz45Ll;
	Fri, 29 Nov 2024 18:40:42 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Y0V6f0fJBzcbc; Fri, 29 Nov 2024 18:40:42 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Y0V6f0c4kzcbV;
	Fri, 29 Nov 2024 18:40:42 -0500 (EST)
Date: Fri, 29 Nov 2024 18:40:42 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: "Jason J.G. White" <jason@jasonjgw.net>, 
    Matthew Dyer` <ilovecountrymusic483@gmail.com>, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: unable to get external drive to be seen after doing an ubuntu
 install.
In-Reply-To: <149359bb-327a-4e7a-9342-37aeac436ffd@jasonjgw.net>
Message-ID: <ad4a99f1-1956-374a-b369-d6e7335105bc@panix.com>
References: <9d92e5fc-a61d-4e48-a758-d9ea7ab5839e@gmail.com> <f981c2ee-d0ba-4b5e-9d33-d82ad1266c5a@jasonjgw.net> <db334430-7cda-4443-9fdf-ed4b68498ea9@gmail.com> <149359bb-327a-4e7a-9342-37aeac436ffd@jasonjgw.net>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: UlioMT6JjnBkE_kpTbjjhNGnyynQJMsIMeNnR4uqsLA_1732923642
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: t5DsRhy5zpUEQgmv8JwOzVuU4j5pBIy859FLMP7Di9k_1732923647
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

jrnlctl -f 2>&1 | tee seagate.log
Then attach the external drive.
Then send the list what's in seagate.log.  Much shorter file.


----- Jude <jdashiel at panix dot com> Q: What borders absolute stupidity?
A: Canada and Mexico. -----


On Fri, 29 Nov 2024, 'Jason J.G. White' via blinux-list@redhat.com wrote:

>
> On 29/11/24 13:15, Matthew Dyer` wrote:
> > Hi,=C2=A0 I have a log but it is so large that trying to view it might =
take a
> > while.
> >
> >
> > Does this list except attachments?=C2=A0 Thanks.
>
> I received your message, but it didn't appear to come via the list, so pe=
rhaps
> the list didn't accept the attachment.
>
> I've added the list back into my reply.
>
> There should be only a handful of relevant lines in the log. You should o=
nly
> send us the relevant lines (generated when you connect the external drive=
),
> not everything else. Insert them into the body of your e-mail.
>
> For example, about four or five lines should suffice to tell the story.
>
> To unsubscribe from this group and stop receiving emails from it, send an
> email to blinux-list+unsubscribe@redhat.com.
>
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

