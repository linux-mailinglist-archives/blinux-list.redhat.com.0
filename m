Return-Path: <blinux-list+bncBDYPVTOXSQEBBEWWSKVQMGQESSQLYII@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com [209.85.167.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B6C7FA33B
	for <lists+blinux-list@lfdr.de>; Mon, 27 Nov 2023 15:43:32 +0100 (CET)
Received: by mail-oi1-f200.google.com with SMTP id 5614622812f47-3b848319495sf5891539b6e.3
        for <lists+blinux-list@lfdr.de>; Mon, 27 Nov 2023 06:43:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701096211; cv=pass;
        d=google.com; s=arc-20160816;
        b=WIvyazSoTD1jSnwVPzpvEGBgaj9lIQOhXyFSOqF0wLAQJ699bdo89vLtvSZ6AxTSJE
         TXe0IBjCa2pkWU1VqSyL3Jsfg+0mk9QR6KizDHW/adonnimhItxjamCwcqjk8tb/5LY6
         mGPCudHRbRUy1+oJhGJ9Jg8ejGtuuGczDFbcBnOpnAms3lHFLT1oFAbYosxi44ZWARJX
         qjz2io2AS6FAT9vF/3Pe/VsolDBgJXzO2gOfb/CpkfxptUamyC1h/ETFS64Ux9Z+ej3q
         PcfuFGtDlIOXriGSAZArmlzA0Iuksf/mmyr6rMjqhpE4v9MMSfwOR/tj/yPCM7rXa6HN
         XR6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=WNbEGrzwkIGSJh6nXV5la2ZnjmLT4hWCoI2klKaB7F0=;
        fh=iKnhA9xasLJWv0QOjwtLjSbDPRvcbVzJ8J5kwrGG1QE=;
        b=CPBTRLm26ZNFnY9NMaaU0N99ry2uPJ69UQG1UdgVsrf2H5gds3m1vsMQ3Nl32TdDDo
         jR5XGNuaTBs+ir3qBn2OUnwA0VtRp/+pBxQtXcHdTOY1ZtEJvjpzP0IXveefibjTkDsg
         Nz6Z6e+FF1dm2e4CTJ7J85z5sJDLCbvtRMfA6qNSq3cbwYDOC4xJwu4FF4uQXcvHjJb6
         0IVzHx03aErTfACq8UEpNqAVbD7BQxOTFoyMUwuwVI8kunCnfUO9Qgk67g5a0MX+rqg5
         WNLxRd2IIKiRNOda6pKKy6PDgICCy6mu2Rfpcd3io49HdnsbUMHw3x7GezDbmM+B/7eI
         4xsg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701096211; x=1701701011;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WNbEGrzwkIGSJh6nXV5la2ZnjmLT4hWCoI2klKaB7F0=;
        b=aNlls38gahiFTPNvBxkBjUlyEG3JnQiTJYwNRaXnWa6uHQ/gVenJchbwlQDtmszLE4
         N27xWgx5k/zoLMryE0/9wOkOe0PGsqogumYXD+9qLAZ33kGVzB0usJZiztaZeCAQthCt
         SEo1uu43GwqyVQxuwSoiz7R4GTDdnGufmd9kjvS76EJ7FkvXSUoun6JjSEy6VJTF0cSe
         yxVmcuS1BXKRJCSxHPPiMHFzN1do8IPorIYPTL6dQ9X1TBAWz+zcmbqiD8fkB5Uc7mDx
         yfe7svaqP024Wc+Gqg6vtj5Dya/eTo+9pZ4s9jCEtk0LyEaf9aOr5MJztw6Dqw1GKaPJ
         +UyA==
X-Gm-Message-State: AOJu0YzMW3WM6oG0ZRB7CsNugwEw6cbgFKud1I4ewBjqD3pMD7HnifNu
	PxWgkBzjeMluW89XO2AhKGQnRw==
X-Google-Smtp-Source: AGHT+IHCDHE581c3/5m2p6ZiNGi74OxLE/Wtqul9XfYQVsVvmqdgoqPbQsmOgfkHlKzfwiuuWTEPZA==
X-Received: by 2002:a05:6808:201c:b0:3b8:4e27:9f49 with SMTP id q28-20020a056808201c00b003b84e279f49mr15320436oiw.12.1701096211091;
        Mon, 27 Nov 2023 06:43:31 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:58c9:0:b0:423:b70e:f8f1 with SMTP id u9-20020ac858c9000000b00423b70ef8f1ls138420qta.0.-pod-prod-05-us;
 Mon, 27 Nov 2023 06:43:30 -0800 (PST)
X-Received: by 2002:a05:622a:6691:b0:423:9d59:1c97 with SMTP id hx17-20020a05622a669100b004239d591c97mr9263718qtb.33.1701096210396;
        Mon, 27 Nov 2023 06:43:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701096210; cv=none;
        d=google.com; s=arc-20160816;
        b=0Ytupi3atAPaKsCIHpXj6l6dhWtFpSUSLpH4v9KZiRlV5JM6MXSBLG+TE76R7oRs3Q
         +8U1gvL3zBzh4Wunq6Se6GGhg3C0v2mIlb65JlhzJjzvJ5piPcTRt6OWSAnoq+8Q4o3j
         bl2ZkkqOrTi5rQCZ0AvWUbqhlVbt8eeIotprAC8slDVZma1T/wVXPFE8lvfQFajmZSX+
         +MrKI6IRVGqkSRVoAgXZ31lGFmCL+hRx1GPaX1oTDOcfEb9CzIn+clqy2kWmCYIZACv5
         RBJLOWDitq+vmL0cEbvTHObF30mROK3HcifOAE92o9/jZrlltrE5CnrurLaPKi/oE7WD
         HB+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=uXt4cwbO0qmqDS+XikDguVdkUqyMdM04Gyo27ZNwJj4=;
        fh=iKnhA9xasLJWv0QOjwtLjSbDPRvcbVzJ8J5kwrGG1QE=;
        b=NtkD/jlgH+Ts9lVl7GMyl4LGQVfRwurFKLPT5Bly7VVOQC3cAebLz6jxOSHhCOxGdt
         yWNeC61UDpj6RLJ/Mo+sgpgGk+2XMfC3k34jMuHJeYRoRiobQrHGM5LgePCDYKHgSML5
         HXE8cowGLR8lb9mNwARlSuwsArzaKXZ85Cme0bHH/YzpSL+OLFcnL+Kc5elsNeTFrLQz
         Kn61Ye8BrmwAyTDJ0NtZmtfl/Skz1mpBGUmD9GuU/7xxoMo4sP1wdnAEtdOhAtWpoW8Y
         RKQ1vYAzoHdwimbYLmzapk2OoCf3nA8jln84ye0BJeRT5vVHYQQBZSGp+HBjrxUT4/bp
         Jrww==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id bx3-20020a05622a090300b00423a4e8ed75si5438598qtb.153.2023.11.27.06.43.30
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 06:43:30 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-611-rBD4eu0vNyGblOinsFJeag-1; Mon, 27 Nov 2023 09:43:29 -0500
X-MC-Unique: rBD4eu0vNyGblOinsFJeag-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B463B811E7B
	for <blinux-list@gapps.redhat.com>; Mon, 27 Nov 2023 14:43:28 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id B122C1C060BB; Mon, 27 Nov 2023 14:43:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A97251C060B0
	for <blinux-list@redhat.com>; Mon, 27 Nov 2023 14:43:28 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8D380811E7B
	for <blinux-list@redhat.com>; Mon, 27 Nov 2023 14:43:28 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-479-iQs1HuboN6iVDOomYC6ddA-1; Mon,
 27 Nov 2023 09:43:26 -0500
X-MC-Unique: iQs1HuboN6iVDOomYC6ddA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Sf7cZ3XGmzJJt;
	Mon, 27 Nov 2023 09:43:26 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Sf7cZ3R4dzcbc; Mon, 27 Nov 2023 09:43:26 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Sf7cZ3PkNzcbP;
	Mon, 27 Nov 2023 09:43:26 -0500 (EST)
Date: Mon, 27 Nov 2023 09:43:26 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: Chime Hart <chime@hubert-humphrey.com>, Chevelle <cstrobel@crosslink.net>
cc: "Jason J.G. White" <jason@jasonjgw.net>, 
    Blinux Discussion List <blinux-list@redhat.com>
Subject: Re: EmacSpeak Won't Compile
In-Reply-To: <a0ccf8ad-295d-0f91-2338-8af7367ceec6@hubert-humphrey.com>
Message-ID: <866f9548-1084-5352-608a-030d30c6a8b8@panix.com>
References: <a197aa90-4838-da18-cc46-44c0ec519c19@hubert-humphrey.com> <2d688527-c4dc-4aca-8c88-f43986fd032c@jasonjgw.net> <ae412f52-ec58-49f6-904c-919f15f047db@jasonjgw.net> <088e0963-afdc-4b90-ae7a-09825b60f7a0@crosslink.net>
 <a0ccf8ad-295d-0f91-2338-8af7367ceec6@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
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

emacspeak has only one developer and he may not have had time to squash
the bug since he has other employment.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Mon, 27 Nov 2023, Chime Hart wrote:

> Thank you, I did add to a report bug item filed in September. Its rather
> amazing that more than 2 months have gone by-and-this is still happening.
> Thanks for your analysis
> Chime
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

