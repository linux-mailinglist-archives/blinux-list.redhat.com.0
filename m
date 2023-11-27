Return-Path: <blinux-list+bncBDM4LSNO5MHBBN7VSKVQMGQE3T7UE3Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id B4EB97FA52A
	for <lists+blinux-list@lfdr.de>; Mon, 27 Nov 2023 16:50:16 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-423a64bc494sf23566891cf.1
        for <lists+blinux-list@lfdr.de>; Mon, 27 Nov 2023 07:50:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701100215; cv=pass;
        d=google.com; s=arc-20160816;
        b=v//SjVVV+fBD4mi2WuYwv/9olwp2UyTdbW4EaDIWzwq2zGTUoIlFBjlamkdb+j+j1m
         ybjJItMfn/pKQkBYQGLJf+Z0TaGh22g7ydvuEEjI/nMgTmQvVW+pgjX/Zpy8sUuMKnQK
         Jj7MFHEzldE9X9j57JTZvpg+n5SgOaov//4dYVUphtSkziXWPMKIU1oKlc5Mo18XEUTm
         KXpucSxsQzusc0McAmWj7uQ49dhwCYkieFR6rmTggdeIrA3MNX/T+Qwnbk9uJsVBOaNB
         antUwrWdu8f0MyTnJOMTo0CQYPpOnvlDv12tlRluSmdaBNBcUVSbYBfg5e8SmcQcBig7
         3+ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=/gpmQjmc3m3DTQte76fbuqS/b7nB9WlEM7025+APCvE=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=XAayaC9uy9UWvnwvKGBrWSgZali+kjf1KLP5eJIqiVg+BveFUte7PpLs4MdFxPdjcI
         XpAvTM4kfBl7eiXq9He5Am6/9kw0TQ5YUqYOpMjPaywLmO1JmJSB0GZO23Txi3tr/8nn
         uJy79kkZlKbZ6UMjX6aeRsN65SS3ZR24LAJEIsFax5g+p5qdmHoBfv83iNCQv587vOp4
         ik/zJsmwF/Heh+ZfEZUfI37vwQ4342JICozRt0X5SnJp35RpjAErPrF/VKiqahK9kyVf
         RxqfhuNduXlRTx1Tfb4cuRZtOYHSxLUR2deJj4wGJN1Lmsn4M9b24u6GPMT5mlNWe3gM
         LF8g==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701100215; x=1701705015;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/gpmQjmc3m3DTQte76fbuqS/b7nB9WlEM7025+APCvE=;
        b=kw3xX6Vp8rL3RQ9yoan/PL5LPyx+h6J1cvx9X0B02KvKbndw/WFk06BywSzQ9dbZ8W
         We8g1h5UbcRP2JRC8Eu4gn8KGQrPX67hvy9EUnlq//FNtQYEjFilmZq0otnkBuUNXo9c
         m6+cVFu2tdnhYJxmQ++eFdKi72ics/F1N1Ogsn3Oghs+iCdDxIcDTrmq1QGbZzJpYu8U
         lLJAiDW2doF5lvM2zOzPaSP2/rJ1fNv0NzSOZLjmxaCZBrBT574YajjjptiKrBnqPOI3
         C2pXlDyD6sVSMspNbUkHzRDJaMHeoJ0ZcJl+gQoCMAiXfDXO/T26Lr+Fytooe4wFGmvz
         vQ5Q==
X-Gm-Message-State: AOJu0YzeDysj9E5QJMjQZ0GYBQOtEivD4hJ4Wyl/ofOdbob9AfQ7lRqU
	LUy/32AOMFOgMTybMqhsVaKOkQ==
X-Google-Smtp-Source: AGHT+IGC6y/3Q24+OeT4idV/9WRJ+cBnst0TdswLQMPKnd3+QTrxWb9lyr9FdxMO6W88IpPnuPI9fg==
X-Received: by 2002:a05:622a:312:b0:423:70d0:6f2a with SMTP id q18-20020a05622a031200b0042370d06f2amr16268306qtw.53.1701100215358;
        Mon, 27 Nov 2023 07:50:15 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:d4:b0:422:1bd:4708 with SMTP id p20-20020a05622a00d400b0042201bd4708ls335464qtw.1.-pod-prod-01-us;
 Mon, 27 Nov 2023 07:50:14 -0800 (PST)
X-Received: by 2002:a05:620a:394a:b0:77d:98c2:ef7e with SMTP id qs10-20020a05620a394a00b0077d98c2ef7emr8814968qkn.19.1701100214601;
        Mon, 27 Nov 2023 07:50:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701100214; cv=none;
        d=google.com; s=arc-20160816;
        b=YMOjPjnMEV61TPXEfIpYSnqLDAQqf2IV9G+EcEYCSvIt1TE/hazh57whWVx8Ju1U6Z
         bP27FZlzWTB/n7KjiaFwzVsbvhogKO+qSG5I3ZPbUcvxlLMqHz2iIBcSbpftqcm3qd0f
         uBHF6drh9PwXeOwTJjum1qAL3ukcXjNWy9y/x0dPeatLYaE8aNjWgF2iqgJYwDZaJ66G
         s+4SUG2UEQ85DOCjH7OqHML3nWEQZQUnd6D61cd8NPgeB30X1KvO7/5wGPwLB6UPwinS
         2R/YPQL0SQjSLRk09IkElW25/Sup6tt+wXBihKWuZ2ve/nay1EJiU5+pUySwDq41CUa9
         R+2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=jemG6NSpV3QLnGTVFbLYLN9fNB5RNDAia1S3Y5jjmqY=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=E9b8n6zuxR0AcX4TkmlrF0NOeROrCYRFFDl9WccMBePh0J6R6B0xj0E0gmSnTkcfXo
         5t62A3kFISzYRDukZOsQ11GlSDymBEsSo28yrhDhoaSole0sVocg4LkEFY+iRPN8V4oU
         wX/idwSFsYc1lPvmqzp+P3Bm7sQIWWfpjtqJLvUHhzLLVKdpYb7kl29BJtInNvrQm9MS
         nWJy4WSZOCiZkNyBK+Mz6wU5vBJIdc9A4mSf/oa7Is256luSWalh/qyEiaT036yHxeFn
         o9of1KwTs0XcKtMQZah5q/O/6D8Y1p8NHesHcImpZ/QfM54+qc5TMHqPAX0NJY3zqTFb
         hsww==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id de13-20020a05620a370d00b0077da5e2cbb9si3117549qkb.316.2023.11.27.07.50.14
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 07:50:14 -0800 (PST)
Received-SPF: pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) client-ip=74.208.4.200;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-440-xHzZ3q6oOyCffxEnJwEJGA-1; Mon, 27 Nov 2023 10:50:13 -0500
X-MC-Unique: xHzZ3q6oOyCffxEnJwEJGA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D6B4783BA8B
	for <blinux-list@gapps.redhat.com>; Mon, 27 Nov 2023 15:50:12 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id D363B112130A; Mon, 27 Nov 2023 15:50:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CA5C91121307
	for <blinux-list@redhat.com>; Mon, 27 Nov 2023 15:50:12 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9EB7C1C29EB2
	for <blinux-list@redhat.com>; Mon, 27 Nov 2023 15:50:12 +0000 (UTC)
Received: from mout.gmx.com (mout.gmx.com [74.208.4.200]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-380-mq9eAbzJP8a3ypnEP8wBDw-1; Mon,
 27 Nov 2023 10:50:10 -0500
X-MC-Unique: mq9eAbzJP8a3ypnEP8wBDw-1
X-UI-Sender-Class: f2cb72be-343f-493d-8ec3-b1efb8d6185a
Received: from johndoe65534.mail.com ([195.16.11.121]) by smtp.mail.com
 (mrgmxus003 [74.208.5.15]) with ESMTPSA (Nemesis) id 0M55nU-1rVCKl1W1e-00zH1T
 for <blinux-list@redhat.com>; Mon, 27 Nov 2023 16:50:09 +0100
Message-ID: <1f668610-d92e-428f-82f3-7a34ad5f1698@mail.com>
Date: Mon, 27 Nov 2023 16:50:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: EmacSpeak Won't Compile
To: blinux-list@redhat.com
References: <a197aa90-4838-da18-cc46-44c0ec519c19@hubert-humphrey.com>
 <2d688527-c4dc-4aca-8c88-f43986fd032c@jasonjgw.net>
 <ae412f52-ec58-49f6-904c-919f15f047db@jasonjgw.net>
 <088e0963-afdc-4b90-ae7a-09825b60f7a0@crosslink.net>
 <a0ccf8ad-295d-0f91-2338-8af7367ceec6@hubert-humphrey.com>
From: john doe <johndoe65534@mail.com>
In-Reply-To: <a0ccf8ad-295d-0f91-2338-8af7367ceec6@hubert-humphrey.com>
X-Provags-ID: V03:K1:mnUbX11KDSNo3D/hrLL2efyu4UR8SZhK0MzbftXN+AVnTGXB3u1
 reARHduS3LP6vfEboxpom9Ssxswo/RSeVFURjaioU59f60CsZ3v+9PhegDa2YUZH1Xsi5bu
 37iJ4hP0ngJjjSItV130PEHVZN7p1/U3+b4TncAUqxlU+oYX95Z5EAZL3gXWsYyeJV04WFH
 WFgBVi3HB0Pj/jWX5yz0g==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:CIEvvoHxaFM=;cU6Q/NfYfD6yw6VrUV4Do0jGlnd
 FR998yIaZlWpVuNJ/9Uddx8jisS/XI60rLVtvbkQC6mLHa+sS51S+rV4IbOvqpnAfhJ+RmBQr
 6KLExikYCh6xuDOXYoI1Lm2hRvCRnqMxIa3VELXpgrDJmQZMqfO4YGkYieVu0NBu50myi9L2X
 j9AUNaqTo6F3EJxj+hqsRRbpYk2l84mO0+K66n1LZ44cgW6nzF54yQ90WmaFbVyAHmmAhDP0o
 EcAbL1ACu4HP/4NmHRqBPbKq0lAp46hmfS/ajZUkhLoWpyckpp5T1AmkwmBhS474UjKD1acnu
 4QyNKbUNlRaWiApQt+JpgR+fimQhAo77kgBkgitLEXlW5nPu/hmnSab8uGv80CATNluGLJbP3
 uO9R5U2BYT71ImaTSnalPs9LCxTyJEyw9XOQEfLcPcKHICU4Xpt503LUAgKwjSBrrHT7vpGzd
 teUj8mF4GJywhqTIyTfuxWJigSuLolqV0FdZzBXNdtQE4pahXkyVmp7V8arblUkYkuwMeu3+p
 G3FCcfTmojTfnQ/vlx+sBnqn3ghqattr0mdRpMHVaP9wUNoCCsXDn6oXiD6gtOKp7V4SIovcd
 mLKe97XvO7ijVVrqlA3W2m9cefZIjX/tWz8CQB/aRJL6R/3jhURboN3CpSnNZqc91iOjFhfp4
 Bxp3PP0DCm1wgadtwVA7T1Xl8wYFDFLvvgpSda2p75/jNhjROk8BjiL5o+yvqzVNJfZportTn
 OMUjb602zwGWsSVSvMLM9GFC1YrMKNCdTKV81cy6KsDJXWwHhWBrFQCXHFwcbRu8FI29ilmrH
 NxH0U7oGOhT7gQtUfi5X6X5iuX448/gHF8XSzsWS9QVlowMK4hsvky/31ZfM+x3AiVpwrCyyg
 kC4x2HAITGSBJvRbDfqMGBOrKEa0+kkv01+7f2UgqH4NP2rgYCBYzAKT1qLH/udUy0ezenHbP
 SZKU27LhmCoJeAbftP8pBLkRJUU=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: mail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: johndoe65534@mail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
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

On 11/27/23 15:40, Chime Hart wrote:
> Thank you, I did add to a report bug item filed in September. Its rather
> amazing that more than 2 months have gone by-and-this is still
> happening. Thanks for your analysis

It's rather amazing that you are expecting PPLs to fix issues when you
ar not able to do it yourself.
It's opensource and maintainers are dedicating free time to  help  the
community.

--
John Doe

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

