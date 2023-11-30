Return-Path: <blinux-list+bncBCFIHJ744YGRBA73UKVQMGQE47RQHKI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB2E7FF709
	for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 17:51:17 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-423afeb1cbcsf13216301cf.1
        for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 08:51:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701363076; cv=pass;
        d=google.com; s=arc-20160816;
        b=A0CKIhfq1mhT8MQQCEHjqN7gXRDd4CJSEzqQAXmrI1hA1+2lgbWwdnCnF32VVL7C4l
         /+y0Ldx+t8CWxytQ5Zeevb9PAYg/IQg7Xg3/VoWS/H0e1sMjYHZkwlx3hmMITLm0nd0U
         jzNtKH+ItiRbTtBdA2OcYpf8J3GLrQujSuInn0z3Ax33TF89REJojoaRWtxPRRqga8g7
         AkRxOE1yBudSCv41dVrlM4G93mbKD/WwgQt+kqzUXN8GhLisEjZVdsVwVQLa1jfWXcyV
         NbIq4k36QAVBFXDcKzhHtfEDZGi48n3cnjZRXiisFu7Iv1jlydxDsw3pYz6XQihRGiID
         rOig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:mail-followup-to:message-id:subject:to:from
         :date:delivered-to;
        bh=yBF3civq+y5lJ/RdYTLrplF29xq41+yfRp7TYx/6+BE=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=NemywWHLImWj2FoMbyDYVQjQ4OWcMTZtHgkahvnNzngR8MMEMh2u9FD6YBDt75xoPv
         DOWA+aMZQFlIC3O4eMhxNhCOnD0fPQ0HzYS0ZnikX+j95BvzrAkW2b88Y5r9bxIVaRfl
         B/cScevzczdSmWWKGVhK7iO3W7uA8aBCiIn0eo3BlRIgTXR8bddjY6zZSkYO2ySZkvGV
         8UhlkhbTz6hlhNdZcf2neQ5cpSj6ZpLX9UnJGI/LfQsLM4RnZWRamA/sI238dYwVJOSD
         0CKJpMZuEGcGF+lsApDtQLeH3rRN5EgcnA1fDi09UwF1+JxN5RpFJSJBVfw9cmu8UQWO
         Lz+g==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) smtp.mailfrom=blinux.list@thechases.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701363076; x=1701967876;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references
         :mail-followup-to:message-id:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yBF3civq+y5lJ/RdYTLrplF29xq41+yfRp7TYx/6+BE=;
        b=sxMCEQpuSkZKannHpFHqxkOivFB6BUpeRYcpmVoLsDzBcl4j187DxufDo1uLEHlWke
         WoR+OsLnRn7McVrcNiH3tX2N5OOUhruKnyZiqo/nbch+tWTgSsNcYouzB2pFq9EUPI63
         eVLOl2kNvGZIyqXjgVFIebuhfQP9ffeXzUJFNfNMnVl5hTeQgnMdgTGgVnUnylXHTDh1
         Yx3rIbSFkxYfH8GfGx3lruTpnt3DI4Sv+fGC8Hw3R9r0uie6hMrRZqdJXGja2NsBYgJ+
         6G/9gOKeDwBe3WEo8RNhwOdcx4Vw3HBkXxOpSjmSqRaLjrpy6tQ2kJOWgVivTzxsnhpa
         bykg==
X-Gm-Message-State: AOJu0YwUe8RuAaUNhwFgCjJk82X86IlL75pq8mZSohbbGKF3JCYvWfE3
	THzQEJ6tH9EYIH7OGMOlvsR9Pg==
X-Google-Smtp-Source: AGHT+IEONLYs1W+OaSbVSbt8RNTOr19MiuCCGRcUDQCMlop9ULnv49h9aKrVW0CaL9VegUWeRMSHsA==
X-Received: by 2002:a05:622a:1a22:b0:421:ba87:43f9 with SMTP id f34-20020a05622a1a2200b00421ba8743f9mr27505774qtb.33.1701363076066;
        Thu, 30 Nov 2023 08:51:16 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:181f:b0:423:84c3:cf91 with SMTP id
 t31-20020a05622a181f00b0042384c3cf91ls798517qtc.2.-pod-prod-02-us; Thu, 30
 Nov 2023 08:51:15 -0800 (PST)
X-Received: by 2002:a05:620a:6609:b0:77d:6600:2047 with SMTP id qf9-20020a05620a660900b0077d66002047mr24635184qkn.62.1701363075337;
        Thu, 30 Nov 2023 08:51:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701363075; cv=none;
        d=google.com; s=arc-20160816;
        b=wEbGt1j2coQMU62mTPRxzosuTK2oHrmm36PxdZaL1fVSLc68yqfbtSR4gndRR/kGsL
         8YvPn6EzpCPwoJVdNmGxUEwj6WiPa6jYWpYX3KVQXfIQvFI1I1DAnaW6cBTy9lNvB6Ib
         6VYj7nNmKTVL8g2iYpVhnlzRdhApMkPC3bSt8rYxCLwFIP3EnBq5wbP30Aey9yZPNbS1
         XSrEt3qbJuOtM9S3DMMmge7vbaFdsSrsqw29l3/j3xup8RPUC4cMg9Av8+nUhYLzvnas
         H9uML9n6YDBpgrWbSe4bYx1Q0MD8umuJRV0BfOStn8w2WEpeGNxOIpUpMlME+I/URncp
         3Hdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references
         :mail-followup-to:message-id:subject:to:from:date:delivered-to;
        bh=wirs61dTS8mw0f8V1ta6yL3wwilgzf/+r6lbmwBiNoU=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=BtkBq8xvCPqv1mZqjYV00tYJyiaPxbwuMvJiX6uV39zYw57trB+l/yr7XR9Q5Ickgx
         rYAbFn6x5OrODSyubUe8fG2XdTcCz09M3b+bpl14G+nHsud1nScepkhrSdT87xx2eitv
         fLm5pPC37E5KeAldJRNscmSnnepZQTkaPoU4+B0Z/n1hSUE05rkuwEEEf4Ph66dK2CyA
         5dlpOGrtLQmnTGNSuVJjAU+ayXhu+tbpL9l6DZ54eevx2gDWdTA7/x0+enTIlHFyyN31
         C7q5Y4iN39ONpQLxQuhR1ouZf8IB1GTRuZ45PUqYuqSi2V6PnVqUbH0nBxNHffrxiNri
         RMxw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) smtp.mailfrom=blinux.list@thechases.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id pe40-20020a05620a852800b00770f2f6e190si1236830qkn.509.2023.11.30.08.51.15
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 08:51:15 -0800 (PST)
Received-SPF: pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) client-ip=54.39.151.74;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-677-_Xf7ZDZ0MN6nL5HgsFnelw-1; Thu, 30 Nov 2023 11:51:14 -0500
X-MC-Unique: _Xf7ZDZ0MN6nL5HgsFnelw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DA6F985A5B5
	for <blinux-list@gapps.redhat.com>; Thu, 30 Nov 2023 16:51:13 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id D79622026D68; Thu, 30 Nov 2023 16:51:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CFE9A2026D4C
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 16:51:13 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A90503813F2A
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 16:51:13 +0000 (UTC)
Received: from thechases.com (thechases.com [54.39.151.74]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-562-Mg7yMBvKN7uAaZH3hJc8Hg-1; Thu,
 30 Nov 2023 11:51:11 -0500
X-MC-Unique: Mg7yMBvKN7uAaZH3hJc8Hg-1
Received: from localhost (thechases.com [local])
	by thechases.com (OpenSMTPD) with ESMTPA id 2bd378a7
	for <blinux-list@redhat.com>;
	Thu, 30 Nov 2023 16:51:11 +0000 (UTC)
Date: Thu, 30 Nov 2023 10:51:10 -0600
From: Tim Chase <blinux.list@thechases.com>
To: blinux-list@redhat.com
Subject: Re: links the chain stinks!
Message-ID: <ZWi9fsW48rqdh_os@thechases.com>
Mail-Followup-To: blinux-list@redhat.com
References: <5e6becb6-91ef-aa6b-1a07-af08c37a3f7a@panix.com>
MIME-Version: 1.0
In-Reply-To: <5e6becb6-91ef-aa6b-1a07-af08c37a3f7a@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: thechases.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: blinux.list@thechases.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of blinux.list@thechases.com designates 54.39.151.74 as permitted
 sender) smtp.mailfrom=blinux.list@thechases.com
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

I think you have to follow it with a 0/1 to disable/enable it.  So the following worked for me:

  $ links -html-numbered-links 1 duckduckgo.com

-tim


On 2023-11-30 11:35, Jude DaShiell wrote:
> the -html-numbered-links option on a command line does not work no matter
> how it is entered.  The documentation is vaporware.
> 
> 
> --
>  Jude <jdashiel at panix dot com>
>  "There are four boxes to be used in defense of liberty:
>  soap, ballot, jury, and ammo.
>  Please use in that order."
>  Ed Howdershelt 1940.
> 
> -- 
> You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
> 

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

