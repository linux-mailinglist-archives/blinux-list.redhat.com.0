Return-Path: <blinux-list+bncBDYPVTOXSQEBB7NR2S3AMGQEWXEYTIY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 5166E967D7B
	for <lists+blinux-list@lfdr.de>; Mon,  2 Sep 2024 03:46:39 +0200 (CEST)
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-5df9ac3042dsf4071046eaf.2
        for <lists+blinux-list@lfdr.de>; Sun, 01 Sep 2024 18:46:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1725241598; cv=pass;
        d=google.com; s=arc-20240605;
        b=PYfyVL5zm4F6y+jE70yDW7aPYDJuyli0++sGpIObYjKyomSNZmFtb1juCthluuWnH9
         CaCpZushanjLy45R7SsqxUhthUsAhH3XtY8sRFxoXQzkeuyJYYL80/pgoY+a53Eyaoqj
         LrajySwUpDO8VbTVeiHs0TGxRl925pRlKCXOn2PmpClCRgFAuWPnPvXtl8j0ywHUiLWT
         MOu0WeVRjZw2YnwCypHrwG2ETNE2MXrulVTFG1nw59CujGLCK1Bfj9KDEW6hMI/kybTT
         Z6RPZKp43Y0U2g7r3ajqB+rsHZsGnq+Tyohs2kf2Hz91d/5p8kxBz9XxIzh0+KH46oDO
         x/5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:to:in-reply-to:cc
         :references:message-id:date:subject:mime-version:from:delivered-to;
        bh=K8CdsXTI+gbU/ekqU7437Soihw4zmkKaeTCjnWaJwhc=;
        fh=BcAadV1O9GKZp7IqZfEgTLInIR4nQgA+rmORi2SWK50=;
        b=NECaOCIa33sMR/jyWC8cawKStQbunbFkILpCxbE3ZI+KvD5zk9kwVhOcPksoaC3nMB
         iTju1Y5EmHgoYrlyjXadG3eLNHz1L0H+hIpwrnhg3cpNe692YSqUxyZSo7a30o6/bXZ0
         OjPBIzkMr1jWllxkYrlT2boXsDsNm6C8jpkXv6N2Tj958NBV43oyRCfRgYUF8zumhWQw
         RM37VSJbzYvZdfuF284uJGZfMCCpk80ZBFbZJe/26hae6vUVUycsSQ+HZiGC44eVAQnM
         u/0A8G9NPY/Rm9H4JmzAD9zue9eE25L1OYfB8Aw1gonCEbwaisNG4i1fd4g3S0Gb+56S
         RpIg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725241598; x=1725846398;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:to:in-reply-to:cc:references:message-id
         :date:subject:mime-version:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K8CdsXTI+gbU/ekqU7437Soihw4zmkKaeTCjnWaJwhc=;
        b=Mv8jCUVbIp5k19mkYDOBDKAZqr/nQrpfQ6PFWSRJA7twzk889Rg/dAmYnRCbfLMLi1
         Cdv+xSyKyY4ZuEcjZbRQelZzKBmjIVc2vadjXEOS9JhTslEQEANSUP3vzOTftNXiXsX5
         hLRQlqJSBl2ymRnGlJ63QnlFOXR5tYFXs9Duxx5NBVCwQUxAyVM0u+NKFVN9hHrSW/Vw
         jG0RXb/dRwi6tDdM+dGO7sOLcqoQ+bSsi7QeEYYZo6pfKp3dkalMvUn9ab7rvTZC2fvL
         KcJdBMintT3o/TKRsBCx6y7zJr9o39tCbFjCtB//MA39G0/zS4VFKgHK6Ky8UZa0Qk3k
         UdAQ==
X-Forwarded-Encrypted: i=2; AJvYcCWWThwgkhsr+Vwn6P1WNBKRkWvnjTjRIRCr2+zsqKyKqZlT6yiSnjnfKhhOiyZIdwHyLKg9pw==@lfdr.de
X-Gm-Message-State: AOJu0YwfaEHQY66773bXSCjWVJv5iH7rAfbUr2hkfs1NtCpTYW8G8tKm
	YOImWnS39ASD05Bm5hcGkQNkJJOOWo+pWA7ojYdSE5aJSgU1jQtrIInesH8wbao=
X-Google-Smtp-Source: AGHT+IFG/sd1YcHDlm/l16IAuVTdKZvbaSdg9am3j+JI0G3DHo4HB3ztA4ctvfMx7g8ehnu97+c+QA==
X-Received: by 2002:a05:6820:1c92:b0:5da:b554:b84c with SMTP id 006d021491bc7-5dfacf53baamr10843322eaf.5.1725241597721;
        Sun, 01 Sep 2024 18:46:37 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:e643:0:b0:5df:8190:e5d9 with SMTP id 006d021491bc7-5df98dbe205ls3921256eaf.0.-pod-prod-07-us;
 Sun, 01 Sep 2024 18:46:37 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXVw2bAccRC5Me+ACEMmaxtZlyOT/BuMNSnd+UKeMFsn9YnnGAR4EB5+19B3bR22mWs91rNUPuRMTQdfQ==@gapps.redhat.com
X-Received: by 2002:a05:6830:490e:b0:709:49c5:fd99 with SMTP id 46e09a7af769-70f71ee9a36mr7698473a34.4.1725241597042;
        Sun, 01 Sep 2024 18:46:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1725241597; cv=none;
        d=google.com; s=arc-20160816;
        b=Gftn6BfFhrv+bQUIWEt/ZBEK7K4vXkjeJKbqVC+jrnJF+0gnvOdmeoucsRwyzyj6YR
         hZpDCU3ZuL0l1Aur66O5w0xBlXXdPSZsnGGOR0YxM1ktVQFQR7AEeJHpKEgeKgGb92G9
         Kr40vGEl5TKQr4mkVqgBbiPLmLwtrRZ7g3Qfnow0SHoDXq5CEs2hhn4EgEis4nQaKmX3
         vT0A+UJSE28AXyAqxig0LVLFo+EaFr+jZwzlPK8GPw/e4wIBIZ/4ZZoDFBzdiS1fJzcl
         pHvypuGUC2BRLEqGIcjUMYFBG7f0Dypakt4oYd9u+AMrLZtAKDxG174ce0fzzayYgQBp
         HR9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:in-reply-to:cc:references:message-id
         :date:subject:mime-version:from:delivered-to;
        bh=sYgvTe7KmLhXa25CDY4MfYDBEjQ1gW0YJkLiUFNHEh4=;
        fh=gDv6rwDpSjtlyUAZhYdl6AdpO+zr5hdfzaUkWFGgNfM=;
        b=komDQXgaqEaNHIkrrbbfOlyEqwwU1d9Mhj3SGeBcWJiYkU5vwSJ1wiJWmHlaZSHrno
         l/7Dh3gEUBeRTUcpr2WH2Mp4W0H61jpZcK8AMwdrwOyG8y/VoMo2izm1YHGmbB8KtO6l
         aSw02wHzB4Ra22eC6sS8sCW++uIM4V6glBE/oWJn/2/VqbkENWXRcmAakBeg3FCk2K30
         YV47yfGLtx7DDiCzoCcEBqSeAb3mn++Z/fVqVvTdpY0GdcpVeu070L9CvZ6DyETiUk5d
         hLzd/FePCsLVIP+2YfykRvWcUezwlMUfk1fOQkrSQw43RnhP44PQ8dWHhYxuktYUVihE
         nVDA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-45682d40267si99971381cf.287.2024.09.01.18.46.36
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Sep 2024 18:46:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-126-CU9R5IEgMo-d09_YQe2Vtw-1; Sun,
 01 Sep 2024 21:46:35 -0400
X-MC-Unique: CU9R5IEgMo-d09_YQe2Vtw-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BEECF1955F56
	for <blinux-list@gapps.redhat.com>; Mon,  2 Sep 2024 01:46:34 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id B863A19560AE; Mon,  2 Sep 2024 01:46:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B654019560A3
	for <blinux-list@redhat.com>; Mon,  2 Sep 2024 01:46:34 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 130241955D4E
	for <blinux-list@redhat.com>; Mon,  2 Sep 2024 01:46:34 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-84-xdVrgB61PuWoC-7UQe5qzg-1; Sun,
 01 Sep 2024 21:46:32 -0400
X-MC-Unique: xdVrgB61PuWoC-7UQe5qzg-1
Received: from smtpclient.apple (64.67.55.137.res-cmts.pls.ptd.net [64.67.55.137])
	by mailbackend.panix.com (Postfix) with ESMTPSA id 4Wxs6v4xrrzn5r;
	Sun,  1 Sep 2024 21:46:31 -0400 (EDT)
From: Jude DaShiell <jdashiel@panix.com>
Mime-Version: 1.0 (1.0)
Subject: Re: no PC speaker beep on startup anymore
Date: Sun, 1 Sep 2024 21:46:20 -0400
Message-Id: <978649CC-75A3-4E1E-87D4-48E37CFDA56D@panix.com>
References: <b15f6fad-51a3-305d-b0b6-24554cbf0c7e@hubert-humphrey.com>
Cc: Edhoari Setiyoso <edhoari.s@gmail.com>, blinux-list@redhat.com
In-Reply-To: <b15f6fad-51a3-305d-b0b6-24554cbf0c7e@hubert-humphrey.com>
To: Chime Hart <chime@hubert-humphrey.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
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



On Sep 1, 2024, at 4:22=E2=80=AFPM, Chime Hart <chime@hubert-humphrey.com> =
wrote:

=EF=BB=BFWell, you may also want to install "beep" and "pcspkr" Seems there=
's another program, somthing like abeep?
Chime

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.
Alternatively, check /usr/share/sounds/purple if on the system and put some=
thing like aplay /usr/share/sounds/purple/login.wav in /etc/rc.local and ma=
ke sure rc.local is executable.  This plays a sound on the sound card for t=
hoose without a pc speaker any longer.

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

